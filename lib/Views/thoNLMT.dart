import 'package:appthoviet/ViewModels/mayNuocNongNLMT.dart';
import 'package:appthoviet/ViewModels/pinMatTroi.dart';

import 'package:flutter/material.dart';

class TabBarNLMT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabBarNLMTWidget(),
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Máy Nước Nóng',
              ),
              Tab(
                text: 'Pin Mặt Trời',
              )
            ],
          ),
          title: Text('Năng Lượng Mặt Trời'),
        ),
        body: TabBarView(
          children: [MayNuocNongNLMT(), PinMatTroi()],
        ),
      ),
    );
  }
}
