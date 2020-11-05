import 'package:flutter/material.dart';

class ContentApp extends StatelessWidget {
  ContentApp({this.titleCTA, this.textCTA});
  final String titleCTA;
  final String textCTA;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Text(
                titleCTA,
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              new Text(textCTA),
            ],
          )
        ],
      ),
    );
  }
}
