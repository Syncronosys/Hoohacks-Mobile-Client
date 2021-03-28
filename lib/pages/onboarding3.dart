import 'package:flutter/material.dart';

class Onboarding3 extends StatefulWidget {
  @override
  _Onboarding3State createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff181818),
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xff181818),
          title: Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(Icons.keyboard_arrow_left,
                    color: Color(0xffFFFFFF), size: 50),
                Image.asset(
                  'assets/logo.png',
                  fit: BoxFit.contain,
                  height: 40,
                ),
                Icon(Icons.account_circle, color: Color(0xff181818), size: 40),
              ],
            ),
          ),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                child: Container(
                  width: 175,
                  height: 175,
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500.0),
                      color: Color(0xff232323)),
                  child: Icon(
                    Icons.school_rounded,
                    color: Color(0xffE2E2E2),
                    size: 100.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 15),
                child: Text('Log In',
                    style: TextStyle(
                        color: Color(0xffE2E2E2),
                        fontWeight: FontWeight.w600,
                        fontSize: 25.0)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                child: Text(
                    'Choose a service to log in with rn bro like pls choose we need to know',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xffE2E2E2).withOpacity(.8),
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Container(
                              width: 24,
                              height: 12,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xff0099ff)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xffFFFFFF).withOpacity(.5)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xffFFFFFF).withOpacity(.5)),
                            ),
                          ),
                          Container(
                            width: 24,
                            height: 12,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff0099ff)),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.fromLTRB(40, 10, 40, 10)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff0099ff)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15)),
                              side: BorderSide(color: Color(0xff0099ff)),
                            ))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Next',
                                style: TextStyle(
                                    color: Color(0xffE2E2E2),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0)),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                              child: Icon(Icons.keyboard_arrow_right,
                                  color: Color(0xffFFFFFF), size: 24),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
