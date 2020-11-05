import 'package:appthoviet/ViewModels/ctyThoViet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:appthoviet/ViewModels/BangGiaCoHinh.dart';
import 'package:appthoviet/ViewModels/contentApp.dart';
import 'package:appthoviet/ViewModels/ChuDeTrang.dart';

class ThoThongNghet extends StatelessWidget {
  const ThoThongNghet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thợ Thông Nghẹt'),
      ),
      body: ThoThongNghetWidget(),
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

class ThoThongNghetWidget extends StatefulWidget {
  static String routeName = 'views/thongNghet';

  @override
  _ThoThongNghetWidgetState createState() => _ThoThongNghetWidgetState();
}

class _ThoThongNghetWidgetState extends State<ThoThongNghetWidget> {
  Widget titleSection = new Container(
    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
    child: new Row(
      children: <Widget>[
        new Expanded(
            child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              shadowColor: Colors.grey,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Text(
                    '   Thợ Việt chuyên cung cấp dịch vụ thông tắc cầu cống tại HCM. Nhận thông bồn cầu, ống thoát nước, thoát sàn nhà vệ sinh. Xử lý triệt để các sự cố nghẹt nhanh chóng và triệt để. Với đội ngũ nhiều năm kinh nghiệm cùng trang thiết bị hiện đại. Hỗ trợ nhanh chóng với chi phí thấp nhất.'),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Text(
                'Bảng Giá Thông Nghẹt',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            BangGiaCoHinh(
              urlimg:
                  'https://thoviet.com.vn/wp-content/uploads/2020/10/lavabo-bi-nghet-va-day-la-cach-thong-tac-cuc-de-dang-1_800x400-1.jpg',
              gia: 'Giá: 250.000đ - 350.000đ',
              titleBG: 'Thông nghẹt Lavabo',
            ),
            BangGiaCoHinh(
              urlimg:
                  'https://thoviet.com.vn/wp-content/uploads/2019/09/BonRuaChen.png',
              titleBG: 'Thông nghẹt Chậu Rửa Chén',
              gia: 'Giá: 350.000đ - 450.000đ',
            ),
            BangGiaCoHinh(
              urlimg:
                  'https://thoviet.com.vn/wp-content/uploads/2018/12/tho-thong-cau-cong-nuoc-bi-tac-nghet-tai-quan-12-2.jpg',
              titleBG: 'Thông nghẹt Thoát Sàn Toilet',
              gia: 'Giá: 450.000đ - 550.000đ',
            ),
            BangGiaCoHinh(
              urlimg:
                  'https://thoviet.com.vn/wp-content/uploads/2019/10/fix_cach-thong-bon-cau-bi-tac-nghet-bang-day-lo-xo.jpg',
              titleBG: 'Thông nghẹt bồn cầu',
              gia: 'Giá: 350.000đ - 550.000đ',
            ),
            BangGiaCoHinh(
              urlimg:
                  'https://thoviet.com.vn/wp-content/uploads/2018/12/thong-cau-cong-bi-tac-nghet-tai-nha-quan-31.jpg',
              titleBG: 'Thông nghẹt cống thoát nước',
              gia: 'Khảo sát báo giá miễn phí!',
            ),
            ContentApp(
              titleCTA: 'Dịch vụ thông nghẹt của Thợ Việt bao gồm:',
              textCTA: '– Thông cầu nghẹt, thông cống nghẹt, thông ống thoát nước.\n' +
                  '– Thông nghẹt toilet, bể phốt, chậu rửa, thoát sàn, các loại đường cống ngầm.\n' +
                  '– Lắp đặt hệ thống ngăn mùi, xử lý triệt để mùi hôi nhà vệ sinh.',
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  'Thợ Việt có đội ngũ kỹ thuật viên nhiệt tình chu đáo, phong cách làm việc chuyên nghiệp và các máy móc hiện đại, đảm bảo mang đến cho khách hàng những dịch vụ tốt nhất với giá thành rẻ nhất. Khách hàng có thể hoàn toàn yên tâm khi sử dụng dịch vụ của Thợ Việt.\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Text(
                'Cách thông nghẹt bồn cầu tại nhà',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            CachThongNghet(
              titleCach: 'Cách 1: Sử dụng đồ thụt cầu bằng cao su:',
              urlcach:
                  'https://thoviet.com.vn/wp-content/uploads/2020/07/cach-thong-tac-bon-cau.jpg',
              contCach:
                  '– Bạn ra tiệm điện nước và mua một cái thụt cầu cao su. Chi phí khoảng 50.000- 100.000 đồng nhưng bạn có thể sử dụng nhiều lần\n' +
                      ' – Chèn thụt bồn cầu vào lỗ cầu và ấn xuống chậm mà chắc. Hãy chắc chắn rằng bạn bít chặt lỗ bồn cầu và pít-tông cần được nhấn chìm trong nước để đạt được hiệu quả. Điều quan trọng là phải đẩy và kéo bằng nước và không khí. Xả thêm nước vào bồn nếu cần thiết. Bạn kéo mạnh pít-tông lên trên để tạo lực hút, sau đó ấn xuống để tạo áp lực. Làm đi làm lại vài lần để thông tắc.',
            ),
            CachThongNghet(
              titleCach: 'Cách 2: Sử dụng móc áo thông nghẹt',
              urlcach:
                  'https://thoviet.com.vn/wp-content/uploads/2020/06/thong-tac-bon-cau-bang-moc-quan-ao.jpg',
              contCach: 'Cách này chỉ hiệu quả nếu vật gây tắc ở gần miệng bồn cầu.\n' +
                  '+ Bẻ móc áo mở ra như trong hình. Để tránh tránh làm hỏng lớp men của bồn cầu, quấn chặt một đầu với vải. Bạn nên buộc chắc để tránh lớp vải bung ra khi thông bồn cầu sẽ khiến càng tắc nghẽn.\n' +
                  '+ Nhét một đầu mắc áo vào trong ống thoát nước bồn cầu. Một khi đã vào trong, nhẹ nhàng xoay và đẩy để thông vật gây tắc nghẽn.',
            ),
            CachThongNghet(
              titleCach: 'Cách 3: Sử dụng dây lò xo thông tắc',
              urlcach:
                  'https://thoviet.com.vn/wp-content/uploads/2020/06/thong-bon-cau-bang-day-lo-xo-1.jpg',
              contCach:
                  ' + Bạn ra cửa hàng điện nước mua dây lò xo thông tắc. Tuỳ theo kích thước, nếu dài 5m thường có giá khoảng 100.000 đồng. Dây có cấu tạo như lò xo có thể đi qua tất cả các khúc gấp của bồn cầu. Khi luồn dây vào bồn cầu thấy vướng thì xoay tay cầm. Rác và tóc sẽ cuốn vào đầu của dây lò xo.\n',
            ),
            CachThongNghet(
              titleCach:
                  'Cách 4: Thông bồn cầu nghẹt: Sử dụng băng keo, băng dính',
              urlcach:
                  'https://thoviet.com.vn/wp-content/uploads/2017/03/thong-bon-cau-bang-bang-dinh-keo.gif',
              contCach: '+ Dùng băng keo băng kín miệng bồn cầu lại, hoặc một miếng nylon trùm quanh bồn cầu, rồi dán chặt các góc, càng chắc càng tốt.\n' +
                  '+ Tiến hành nhấn nút xả nước vào bồn cầu, cùng lúc đó Bạn dùng 2 tay đẩy vào giữa để tạo ra áp lực nén đẩy vật bị nghẹt trôi đi.\n' +
                  '+ Nguyên lý của miếng dán băng keo thực chất cũng giống như chiếc thụt cao su, chỉ khác ở chỗ nó bao trùm toàn bộ bồn cầu. Khi ấn xuống, không khí được đẩy thẳng vào ống, tạo ra sự chênh lệch về áp suất.\n' +
                  '+ Sau đó lực đàn hồi sẽ kéo miếng dán lên, tạo ra lực hút tác động lên vật thể gây tắc. Làm đi làm lại vài lần, bồn cầu sẽ đột nhiên thoát nước như chưa có gì xảy ra.',
            ),
            CTYThoViet()
          ],
        ))
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          ChuDeTrang(
            titleTrang: 'Thợ Thông Nghẹt',
          ),
          titleSection
        ],
      ),
    );
  }
}

class CachThongNghet extends StatelessWidget {
  CachThongNghet({this.titleCach, this.urlcach, this.contCach});
  final String titleCach;
  final String urlcach;
  final String contCach;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              titleCach,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Image.network(
            urlcach,
            fit: BoxFit.cover,
            width: 400,
            height: 180,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Text(contCach),
          )
        ],
      ),
    );
  }
}
