import 'package:flutter/material.dart';

class BangGiaCoHinh extends StatelessWidget {
  BangGiaCoHinh({this.urlimg, this.titleBG, this.gia});
  final String urlimg;
  final String titleBG;
  final String gia;
  @override
  Widget build(BuildContext context) {
    return new Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.asset(
            urlimg,
            width: 400,
            height: 180,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text(titleBG,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            subtitle: Text(
              gia,
              textAlign: TextAlign.right,
              style:
                  TextStyle(color: Colors.black87, fontStyle: FontStyle.italic),
            ),
          ),
        ],
      ),
    );
  }
}
