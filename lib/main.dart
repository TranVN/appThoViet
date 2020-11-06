import 'package:flutter/material.dart';
import 'Views/home.dart';

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
