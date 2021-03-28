import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff181818),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 12.5),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Get Started',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xffE2E2E2),
                            fontWeight: FontWeight.w600,
                            fontSize: 35.0),
                      ),
                      Text(
                        "We're glad you're here!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xffE2E2E2).withOpacity(0.5),
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                          child: Container(
                            width: 300,
                            height: 300,
                            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(500.0),
                                color: Color(0xff232323)),
                            child: Icon(
                              Icons.school_rounded,
                              color: Color(0xffE2E2E2),
                              size: 150.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                          child: ButtonTheme(
                            splashColor: Color(0xffE2E2E2),
                            minWidth: 225.0,
                            height: 40.0,
                            child: TextButton(
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all<
                                            EdgeInsets>(
                                        EdgeInsets.fromLTRB(90, 10, 90, 10)),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color(0xff0099FF)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side:
                                          BorderSide(color: Color(0xff0099FF)),
                                    ))),
                                child: Text(
                                  'See How',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xffE2E2E2),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.0),
                                ),
                                onPressed: () {}),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Text(
                                'Skip',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xffE2E2E2),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.0),
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
