import "package:flutter/material.dart";
import 'thoChongTham.dart';
import 'thoDien.dart';
import 'thoMoc.dart';
import 'thoDienLanh.dart';
import 'thongNghet.dart';
import 'thoSuaMayLanh.dart';
import 'thoSuaNha.dart';
import 'vsBeNuoc.dart';
import 'thoVSNLMT.dart';
import 'thoDoNuocRoRi.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trang Chủ'),
        centerTitle: true,
      ),
      backgroundColor: Colors.amber[200],
      body: HomeWidget(),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: const IconThemeData(size: 22.0),
        closeManually: true,
        curve: Curves.bounceIn,
        tooltip: 'Toggle options',
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
              launch('tel://0903532938');
            },
          ),
          SpeedDialChild(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Icon(Icons.chat),
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
            onTap: () {
              launch(('https://zalo.me/0903532938'));
            },
          ),
        ],
      ),
    );
  }
}

class HomeWidget extends StatefulWidget {
  static String routeName = 'views/Home';

  @override
  State<StatefulWidget> createState() => HomeStateWidget();
}

class HomeStateWidget extends State<HomeWidget> {
  Widget titleSection = new ClipRRect(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
    child: Image.asset(
      'lib/images/tapthecty.png',
      fit: BoxFit.cover,
      height: 200,
      width: 400,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          titleSection,
          Padding(padding: EdgeInsets.all(5)),
          GridView.count(
            primary: false,
            padding: const EdgeInsets.all(5),
            crossAxisCount: 4,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
            shrinkWrap: true,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThoDien()),
                    );
                  },
                  splashColor: Colors.green[200],
                  child: Center(
                    child: DVTV(
                      urlDVTV: 'lib/images/icon_tho.png',
                      titleDVTV: 'Thợ Điện',
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThoDienLanh()),
                    );
                  },
                  splashColor: Colors.green[200],
                  child: Center(
                    child: DVTV(
                      urlDVTV: 'lib/images/icon_tho.png',
                      titleDVTV: 'Thợ Điện Lạnh',
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThoMoc()),
                    );
                  },
                  splashColor: Colors.green[200],
                  child: Center(
                    child: DVTV(
                      urlDVTV: 'lib/images/icon_tho.png',
                      titleDVTV: 'Thợ Mộc',
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThoThongNghet()),
                    );
                  },
                  splashColor: Colors.green[200],
                  child: Center(
                    child: DVTV(
                      urlDVTV: 'lib/images/icon_tho.png',
                      titleDVTV: 'Thông Nghẹt',
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThoChongTham()),
                    );
                  },
                  splashColor: Colors.green[200],
                  child: Center(
                    child: DVTV(
                      urlDVTV: 'lib/images/icon_tho.png',
                      titleDVTV: 'Chống Thấm',
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DoNuocRoRi()),
                    );
                  },
                  splashColor: Colors.green[200],
                  child: Center(
                    child: DVTV(
                      urlDVTV: 'lib/images/icon_tho.png',
                      titleDVTV: 'Dò Nước Rò Rỉ',
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VSBN()),
                    );
                  },
                  splashColor: Colors.green[200],
                  child: Center(
                    child: DVTV(
                      urlDVTV: 'lib/images/icon_tho.png',
                      titleDVTV: 'VS Bể Nước',
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThoSuaMayLanh()),
                    );
                  },
                  splashColor: Colors.green[200],
                  child: Center(
                    child: DVTV(
                      urlDVTV: 'lib/images/icon_tho.png',
                      titleDVTV: 'Sửa Máy Lạnh',
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    _dVkhac(context);
                  },
                  splashColor: Colors.green[200],
                  child: Center(
                    child: DVTV(
                      urlDVTV: 'lib/images/ThoKhac.png',
                      titleDVTV: 'Thợ Khác',
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
            child: Divider(
              height: 2,
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 0, 10),
                  child: Text(
                    'Giảm giá 10% \n cho dịch vụ sửa điện nước hộ gia đình!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                Image.asset(
                  'lib/images/phieuGiamGia.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void _dVkhac(context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return Container(
        clipBehavior: Clip.none,
        color: Color(0xFF737373),
        height: 500,
        child: new Container(
          child: Container(
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15),
                topRight: const Radius.circular(15),
              ),
            ),
            child: new Row(
              children: <Widget>[
                new Expanded(
                    child: new Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(150, 5, 150, 5),
                      child: new Divider(
                        height: 15.0,
                        color: Colors.grey[300],
                        indent: 5.0,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 260, 10),
                        child: new Text(
                          'Khám phá dịch vụ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )),
                    new GridView.count(
                      padding: const EdgeInsets.all(10),
                      crossAxisCount: 4,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                      shrinkWrap: true,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VSNLMT()),
                              );
                            },
                            splashColor: Colors.green[200],
                            child: Center(
                              child: DVTV(
                                urlDVTV: 'lib/images/icon_tho.png',
                                titleDVTV: 'Vệ Sinh NLMT',
                              ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ThoSuaNha()),
                              );
                            },
                            splashColor: Colors.green[200],
                            child: Center(
                              child: DVTV(
                                urlDVTV: 'lib/images/icon_tho.png',
                                titleDVTV: 'Thợ Sửa Nhà',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      );
    },
  );
}

class DVTV extends StatelessWidget {
  DVTV({this.urlDVTV, this.titleDVTV});

  final String urlDVTV;
  final String titleDVTV;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Column(
          children: [
            Image.asset(
              urlDVTV,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
            Text(titleDVTV),
          ],
        ),
      ],
    );
  }
}

class DV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
