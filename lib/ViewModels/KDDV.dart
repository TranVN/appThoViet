import 'package:flutter/material.dart';

class KDDV extends StatelessWidget {
  KDDV({
    this.urlImg,
    this.titleKDDV,
  });
  final String urlImg;
  final String titleKDDV;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          urlImg,
          width: 60,
          fit: BoxFit.cover,
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              titleKDDV,
              textAlign: TextAlign.center,
            ))
      ],
    ));
  }
}
