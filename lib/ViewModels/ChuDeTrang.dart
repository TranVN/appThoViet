import 'package:flutter/material.dart';

class ChuDeTrang extends StatelessWidget {
  ChuDeTrang({this.titleTrang});
  final String titleTrang;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Card(
        color: Colors.blue[300],
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            titleTrang,
            textAlign: TextAlign.center,
            style: new TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
