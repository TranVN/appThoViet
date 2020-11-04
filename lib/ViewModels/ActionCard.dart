import 'package:flutter/material.dart';
//import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:url_launcher/url_launcher.dart';

class ActionCardButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon: Icon(Icons.call),
          color: Colors.blue,
          tooltip: 'Hotline: 0903532938',
          onPressed: () {
            launch("tel://0903532938");
          },
        ),
        IconButton(
          icon: Icon(Icons.message),
          color: Colors.blue,
          tooltip: 'Zalo me : 0903532938',
          onPressed: () {
            launch('https://zalo.me/0903532938');
          },
        ),
      ],
    );
  }
}
