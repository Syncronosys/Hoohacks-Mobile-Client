import 'package:flutter/material.dart';
import 'dart:async';

import 'package:hoohacksmobile/services/webcalls.dart';
import 'package:hoohacksmobile/widgets/comp_user.dart';

class PeoplePage extends StatefulWidget {
  final String session;
  PeoplePage({required this.session});

  @override
  _PeoplePageState createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  late Timer pollingTimer;
  List<UserComposite> nodes = [];

  int calculate(double happiness, double neutral) {
    double percent = 1 - (1 - (happiness + neutral / 2));
    if (percent > 1) percent = 1;
    return (percent * 100).round();
  }

  @override
  void initState() {
    pollingTimer = Timer.periodic(Duration(seconds: 5), (_) {
      ServerCalls.pollClientComposites(widget.session).then((value) {
        print(value);
        setState(() {
          if (value != null) {
            nodes = value.entries
                .map((MapEntry e) => UserComposite(
                    e.value['name'],
                    calculate(double.parse(e.value['happiness']),
                        double.parse(e.value['neutral']))))
                .toList();
          }
        });
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xff232323),
            ),
            padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 25.0),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Welcome to Polymer!',
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 25.0),
                    child: Text(
                      'Your joinable code is: ' + widget.session,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          ),
          ...nodes
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}
