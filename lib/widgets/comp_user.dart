import 'package:flutter/material.dart';

class UserComposite extends StatelessWidget {
  final String name;
  final int composite;
  UserComposite(this.name, this.composite);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 1.0),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 35.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                  ),
                  Text(
                    'Composite satisfaction rating: ' +
                        composite.toString() +
                        '%',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
