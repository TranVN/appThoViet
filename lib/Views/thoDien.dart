import "package:flutter/material.dart";
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:url_launcher/url_launcher.dart';

class ThoDien extends StatelessWidget {
  const ThoDien({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thợ Điện'),
      ),
      body: ThoDienWidget(),
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

class ThoDienWidget extends StatefulWidget {
  static String routeName = 'views/thoDien';

  @override
  State<StatefulWidget> createState() => ThoDienStateWidget();
}

class ThoDienStateWidget extends State<ThoDienWidget> {
  Widget titleSection = new Container(
    padding: const EdgeInsets.all(10),
    child: new Row(
      children: <Widget>[
        new Expanded(
            child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new Image.network(
              "https://thoviet.com.vn/wp-content/uploads/2017/04/tho-dien-nuoc-tphcm-quan-4.jpg",
              fit: BoxFit.cover,
              width: 400,
              height: 150,
            ),
            Padding(padding: EdgeInsets.all(5)),
            new Text(
                "- Thợ sửa điện nhà tại TP Hồ Chí Minh, dịch vụ nhanh chóng chất lượng, uy tín, bảo hành dài lâu."),
            new Text(
                "- Dịch vụ sửa điện tại nhà, công ty, cơ quan, văn phòng tại Tp Hồ Chí Minh."),
            new Text(
                "- Dịch vụ sửa chữa điện với đội ngũ nhân viên kỹ thuật điện chuyên nghiệp, tận tâm, nhiệt tình, vui vẻ."),
            new Text(
                "- Có hoá đơn VAT, phiếu thu, giấy biên nhận giao hàng, chứng từ đầy đủ để khách hàng tiện thanh toán."),
            new Text(
              "BẢNG GIÁ LẮP ĐẶT - SỬA CHỮA ĐIỆN TẠI NHÀ:",
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            new Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.network(
                    'https://thoviet.com.vn/wp-content/uploads/2019/01/tho-lap-dat-dong-ho-dien-1-pha-3-pha-tphcm-1.jpg',
                    width: 400,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                  ListTile(
                    title: const Text('Lắp Đồng Hồ Điện',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      'Giá: 80.000đ - 150.000đ',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black87, fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.network(
                    'https://thoviet.com.vn/wp-content/uploads/2017/11/tho-lap-den-led-trang-tri-shop-quan-ao-thoi-trang-4.jpg',
                    width: 400,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                  ListTile(
                    title: const Text('Lắp mới đèn lon',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      'Giá: 80.000đ - 150.000đ',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black87, fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.network(
                    'https://thoviet.com.vn/wp-content/uploads/2020/05/sua-o-dien-bi-long-3.png',
                    width: 400,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                  ListTile(
                    title: const Text('Sửa chập điện âm tường',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      'Giá: Khảo sát báo giá',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black87, fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.network(
                    'https://thoviet.com.vn/wp-content/uploads/2018/10/tho-lap-bong-den-dien-quan-binh-thanh.jpg',
                    width: 400,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                  ListTile(
                    title: const Text('Thay một bộ bóng đèn',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      'Giá: 80.000đ - 150.000đ',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black87, fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
            new Text(
              'Mạng lưới phục vụ rộng khắp TP.HCM:',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            new Text('- Thợ Việt với đội ngũ thợ chuyên sửa chữa điện nước, có nhiều năm kinh nghiệm trong nghề. Nhiều thợ có tay nghề cao, giỏi có thể sửa chữa được những ca khó.' +
                '\n- Đội ngũ thợ phủ khắp các quận huyện tại TP Hồ Chí Minh. Sẽ nhanh có mặt để giải quyết vấn đề bạn gặp phải.' +
                '\n- Đội ngũ thợ phủ khắp các quận huyện tại TP Hồ Chí Minh. Sẽ nhanh có mặt để giải quyết vấn đề bạn gặp phải.' +
                '\n- Dịch vụ sửa điện tại nhà quận 1, quận 2, quận 3, quận 4, quận 5, quận 7, quận 8, quận 9, quận 10, quận 11, quận 12.' +
                '\n- Dịch vụ sửađiện tại nhà các quận Phú Nhuận, quận Bình Thạnh, quận Gò Vấp, quận Tân Bình, quận Tân Phú, quận Thủ Đức, quận Bình Tân, H Bình Chánh.' +
                '\n- Thợ Việt luôn lấy tinh thần trách nghiệm để đảm bảo chất lượng công trình. Bảo hành nhanh chóng.'),
            new GridView.count(
              padding: const EdgeInsets.all(5),
              crossAxisCount: 3,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://thoviet.com.vn/wp-content/uploads/2019/10/fix_14.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  // padding: const EdgeInsets.all(8),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://thoviet.com.vn/wp-content/uploads/2019/10/fix_11.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  // padding: const EdgeInsets.all(8),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://thoviet.com.vn/wp-content/uploads/2019/10/fix_15.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  // padding: const EdgeInsets.all(8),
                ),
              ],
            ),
            new Text(
              'Bên cạnh các dịch vụ về điện, Thợ Việt còn cung cấp các dịch vụ khác như:',
              textAlign: TextAlign.start,
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            new Text('_ Dịch vụ sửa chữa vệ sinh lắp đặt máy lạnh.\n' +
                '_ Sửa chữa lắp đặt thi công ống nước.\n' +
                '_ vệ sinh bể nước bồn nước, bể chứa nước sinh hoạt  mọi dung tích.')
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
        new Text(
          "Thợ Sửa Chữa - Lắp Đặt Điện",
          textAlign: TextAlign.center,
          style: new TextStyle(
            fontSize: 24,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        titleSection
      ],
    ));
  }
}
