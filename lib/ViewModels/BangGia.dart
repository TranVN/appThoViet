import 'package:flutter/material.dart';

class BangGia extends StatelessWidget {
  BangGia({this.titleCT, this.contentCT, this.subtitleCT});
  final String titleCT;
  final String contentCT;
  final String subtitleCT;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Card(
        color: Colors.grey[100],
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            new Text(titleCT,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            ListTile(
              title: Text(contentCT),
              subtitle: Text(
                subtitleCT,
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.blue,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
