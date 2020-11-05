//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Views/home.dart';
//import 'package:flutter/services.dart';
// import 'package:intent/intent.dart' as android_intent;
// import 'package:intent/action.dart' as android_action;
//import static android.Manifest.permission.CALL_PHONE;

void main() => runApp(MyApp());

/// This is the main application widget.

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Thợ Sửa Máy Lạnh',
      home: HomePage(),
      theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
              bodyText2: TextStyle(
            fontSize: 14.0,
            fontFamily: 'arial',
            color: Colors.black,
          ))),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  var grade;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
              child: Icon(Icons.pin_drop, size: 24.0),
            ),
            Text('Thợ Việt'),
          ],
        ),
      ),
      body: Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              new Image.network(
                  "https://www.google.com/logos/doodles/2020/halloween-2020-6753651837108597.4-s.png"),
            ],
          )
        ],
      )),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: const IconThemeData(size: 22.0),
        closeManually: true,
        curve: Curves.bounceIn,
        tooltip: 'Thông Tin Liên Hệ',
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 8.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
        children: [
          SpeedDialChild(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Icon(Icons.call),
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
            onTap: () {
              launch(('https://zalo.me/0903532938'));
            },
          ),
          SpeedDialChild(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Icon(Icons.chat),
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
            onTap: () {
              launch('tel://0903532938');
            },
          ),
        ],
      ),
    );
  }
}
