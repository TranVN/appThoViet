import 'package:appthoviet/Views/mayNuocNongNLMT.dart';
import 'package:appthoviet/Views/thoChongTham.dart';
import 'package:flutter/material.dart';

class TabBarNLMT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: 'Máy Tắm Nóng',
                  ),
                  Tab(
                    text: 'Pin Mặt Trời',
                  )
                  // Tab(icon: Icon(Icons.directions_car)),
                  // Tab(icon: Icon(Icons.directions_transit)),
                ],
              ),
              title: Text('Năng Lượng Mặt Trời'),
            ),
            body: TabBarNLMTWidget()),
      ),
    );
  }
}

class TabBarNLMTWidget extends StatefulWidget {
  static String routeName = 'views/thoNLMT';
  @override
  _TabBarNLMTWidgetState createState() => _TabBarNLMTWidgetState();
}

class _TabBarNLMTWidgetState extends State<TabBarNLMTWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBarView(
        children: [
          MayNuocNongNLMT(),
          ThoChongTham(),
        ],
      ),
    );
  }
}
