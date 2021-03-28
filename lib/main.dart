import 'package:flutter/material.dart';
import 'package:hoohacksmobile/pages/session_page.dart';

void main() => runApp(PolymerApp());

class PolymerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SessionPage(),
      theme: ThemeData(
        backgroundColor: Color(0xff181818),
        fontFamily: 'Montserrat',
      ),
    );
  }
}
