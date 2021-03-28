import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff181818),
        body: Center(
            child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 12.5),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Dashboard',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xffE2E2E2),
                          fontWeight: FontWeight.w600,
                          fontSize: 30.0),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        "Here are your insights",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xffE2E2E2).withOpacity(0.5),
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Rohan',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFFFFFF))),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                        child: SuggestedLessonCarousel(),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Calendar',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFFFFFF))),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Students',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFFFFFF))),
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Container(
                            alignment: Alignment.center,
                            //width: 350,
                            height: 80,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff232323)),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/logo.png',
                                          fit: BoxFit.contain,
                                          height: 50,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(15, 0, 0, 0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 10),
                                                child: Text('Alex Rankin',
                                                    style: TextStyle(
                                                        fontSize: 17.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color:
                                                            Color(0xffFFFFFF))),
                                              ),
                                              Text('extra space available',
                                                  style: TextStyle(
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xffFFFFFF)
                                                          .withOpacity(.8))),
                                            ],
                                          ),
                                        )
                                      ]),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Column(children: [
                                        Icon(Icons.track_changes,
                                            color: Color(0xffffffff), size: 25),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 5, 0, 0),
                                          child: Text('67%',
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xffFFFFFF)
                                                      .withOpacity(.9))),
                                        )
                                      ]),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 0, 0, 0),
                                        child: Column(children: [
                                          Icon(Icons.track_changes,
                                              color: Color(0xffffffff),
                                              size: 25),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 5, 0, 0),
                                            child: Text('67%',
                                                style: TextStyle(
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xffFFFFFF)
                                                        .withOpacity(.9))),
                                          )
                                        ]),
                                      ),
                                    ],
                                  ),
                                ]),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}

class SuggestedLessonCarousel extends StatefulWidget {
  @override
  _SuggestedLessonCarouselState createState() =>
      _SuggestedLessonCarouselState();
}

class _SuggestedLessonCarouselState extends State<SuggestedLessonCarousel> {
  PageController _controller =
      PageController(initialPage: 0, viewportFraction: .5);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
      child: Center(
        child: buildSuggestedLessonList(
          buildTile('Title', Icons.device_unknown, Color(0xff0099ff),
              '35 mins 20 mins lil uzi vert go crazy dawgggg', '70 mins'),
          buildTile('Title', Icons.device_unknown, Color(0xff0099ff),
              '35 mins 20 mins lil uzi vert go crazy dawgggg', '70 mins'),
          buildTile('Title', Icons.device_unknown, Color(0xff0099ff),
              '35 mins 20 mins lil uzi vert go crazy dawgggg', '70 mins'),
        ),
      ),
    );
  }

  Widget buildTile(
      String title, IconData icon, Color color, String desc, String time) {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Color(0xff232323)),
          width: 250,
          height: 160,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w600,
                            fontSize: 22)),
                    Container(
                      padding: EdgeInsets.all(5.5),
                      decoration: BoxDecoration(
                          border: Border.all(color: color, width: 3),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(icon, color: Color(0xffFFFFFF), size: 20),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.lock_clock,
                          color: Color(0xffffffff).withOpacity(.7), size: 15),
                      Padding(
                        padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                        child: Text(time,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Color(0xffFFFFFF).withOpacity(.7),
                                fontWeight: FontWeight.w400,
                                fontSize: 15)),
                      ),
                    ]),
              ),
              Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: Text(desc,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color(0xffFFFFFF).withOpacity(.7),
                              fontWeight: FontWeight.w400,
                              fontSize: 15)),
                    ),
                  ]),
            ],
          ),
        ));
  }

  Widget buildSuggestedLessonList(Widget card, Widget card2, Widget card3) {
    return ListView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            child: card,
          ),
          SizedBox(
            child: card2,
          ),
          SizedBox(
            child: card3,
          ),
        ]);
  }
}
