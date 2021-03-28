import 'package:flutter/material.dart';
import 'package:hoohacksmobile/pages/people_page.dart';
import 'package:hoohacksmobile/services/webcalls.dart';

class SessionPage extends StatefulWidget {
  @override
  _SessionPageState createState() => _SessionPageState();
}

class _SessionPageState extends State<SessionPage> {
  bool _isLoaded = false;

  String sessionId = '';

  @override
  void initState() {
    ServerCalls.setupSession().then((value) {
      setState(() {
        sessionId = value!;
        _isLoaded = true;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: !_isLoaded
                ? <Widget>[
                    Text(
                      'Initializing session...',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 27.0,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50.0),
                      child: CircularProgressIndicator(),
                    ),
                  ]
                : <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30.0),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 50.0,
                      ),
                    ),
                    Text(
                      'Session generated successfully',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 27.0,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30.0),
                      child: Text(
                        sessionId,
                        style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.w600,
                          fontSize: 30.0,
                        ),
                      ),
                    ), // add google fonts in pubspec
                    Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: TextButton(
                        onPressed: () => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    PeoplePage(session: sessionId))),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.fromLTRB(60, 15, 60, 15)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff0099ff)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(color: Color(0xff0099ff)),
                            ))),
                        child: Text(
                          'Proceed',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w600,
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                    ),
                  ],
          ),
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}
