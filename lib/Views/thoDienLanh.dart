import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:url_launcher/url_launcher.dart';

// import 'package:thoviet/Shared/app_color.dart';

class ThoDienLanh extends StatelessWidget {
  const ThoDienLanh({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thợ Điện Lạnh'),
      ),
      body: ThoDienLanhWidget(),
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

class ThoDienLanhWidget extends StatefulWidget {
  static String routeName = 'views/thoDienLanh';

  @override
  _ThoDienLanhState createState() => _ThoDienLanhState();
}

class _ThoDienLanhState extends State<ThoDienLanhWidget> {
  Widget titleSection = new Container(
    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
    child: new Row(
      children: <Widget>[
        new Expanded(
            child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding: EdgeInsets.all(5)),
            new Text(
              "Thợ điện lạnh là một phần trong đội ngũ của Công ty Thợ Việt. Với nhiều Thợ chuyên nhận thực hiện các công việc:",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            new Text(
                " – Lắp đặt,di rời, chuyển vị trí mới cho máy lạnh, tủ lạnh, máy giặt…"),
            new Text(
                " – Sửa chữa máy lạnh điều hòa, tủ lạnh, tủ đông, máy giăt…"),
            new Text(
                "– Bảo trì, vệ sinh điều hoà không khí, vệ sinh máy giặt,…"),
            new Text(
              "Dịch vụ điện lạnh Thợ Việt rất mong được phục vụ quý khách hàng, Thợ điện lạnh chuyên nhận sửa chữa, vệ sinh các sản phẩm liên quan tới điện lạnh như:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Thợ Tháo Lắp Đặt Máy Lạnh',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    subtitle: Text(
                      'Thợ Việt nhận tháo, lắp mới, di dời máy cũ ở mọi địa thế.',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.network(
                    'https://thoviet.com.vn/wp-content/uploads/2020/06/may-lanh-chay-nuoc.jpg',
                    fit: BoxFit.cover,
                    width: 400,
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 5.0, 16.0, 0.0),
                    child: Text(
                      'Lắp đặt máy lạnh với những dụng cụ chuyên dùng:\n' +
                          '+ Khoan bê tông rút lõi.\n' +
                          '+ Súng bắn vít, xoay Bulông – Nhanh chóng trong thi công.',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ActionCardButton()
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Thợ Sửa Chữa Máy Lạnh',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    subtitle: Text(
                      'Thợ Việt chuyên sửa chữa ở mọi địa thế.',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.network(
                    'https://thoviet.com.vn/wp-content/uploads/2019/10/fix_Tho-sua-may-lanh.jpg',
                    fit: BoxFit.cover,
                    width: 400,
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 5.0, 10.0, 0.0),
                    child: Text(
                      'Chuyên sửa chữa các trường hợp sau:\n' +
                          '+ Sửa máy lạnh không chạy.\n' +
                          '+ Sửa máylạnh bị hỏng Block.\n' +
                          '+ Bơm gas mới R22, R410 cho máy lạnh\n' +
                          '+ Khắc phục hiện tượng xì gas dàn nóng hoặc dàn lạnh, thay đường ống máy lạnh.\n',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ActionCardButton()
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Thợ Vệ Sinh Máy Lạnh',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    subtitle: Text(
                      'Thợ Việt nhận vệ sinh trọn gói.',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.network(
                    'https://thoviet.com.vn/wp-content/uploads/2019/10/fix_Tho-ve-sinh-rua-may-lanh-quan-1-2-3-4-5-6-7-10.jpg',
                    fit: BoxFit.cover,
                    width: 400,
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 5.0, 10.0, 0.0),
                    child: Text(
                      'Công việc vệ sinh – bảo trì trọn gói bao gồm:\n' +
                          '+ Xịt rửa dàn nóng lạnh, kiểm tra máy lạnh, kiểm tra gas, châm gas thêm miễn phí.\n' +
                          '+ Bảo hành máy trong 01 tháng nếu máy bị chảy nước, thiếu gas do quá trình kiểm tra.\n' +
                          '+ Vệ sinh sạch sẽ, gọn gàng, trách nhiệm, nhiệt tình, uy tín.\n',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ActionCardButton()
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Thợ Vệ Sinh Máy Giặt',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    subtitle: Text(
                      'Thợ Việt chuyên nhận vệ sinh máy giặt các loại.',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.network(
                    'https://thoviet.com.vn/wp-content/uploads/2019/10/fix_tho-sua-may-giat-tai-nha-tphcm.jpg',
                    fit: BoxFit.cover,
                    width: 400,
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 5.0, 10.0, 0.0),
                    child: Text(
                      'Nhận vệ sinh máy giặt trọn gói:\n' +
                          '+ Nhận vệ sinh các loại máy giặt cửa trước, máy giặt cửa trên.\n' +
                          '+ Dịch vụ của Thợ Việt máy giặt thực sự sạch vì chúng tôi tháo lồng giặt ra vệ sinh bằng tia nước áp xuất cao.\n' +
                          '+ Kiểm tra kỹ lưỡng các linh kiện chi tiết máy trước và sau khi vệ sinh.\n' +
                          '+ An toàn – tiết kiệm cho Bạn và Gia đình.\n',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ActionCardButton()
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Thợ Sửa Chữa Máy Giặt',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    subtitle: Text(
                      'Thợ Việt nhận sửa máy giặt các loại.',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.network(
                    'https://thoviet.com.vn/wp-content/uploads/2019/10/fix_tho-ve-sinh-may-giat.jpg',
                    fit: BoxFit.cover,
                    width: 400,
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 5.0, 10.0, 0.0),
                    child: Text(
                      'Chuyên sửa chữa các trường hợp sau:\n' +
                          '+ Sửa chữa máy giặt các loại từ các hãng và công suất khác nhau.\n' +
                          '+ Sửa chữa máy giặt cửa trên, cửa trước từ các hãng Toshiba, SamSung,...\n' +
                          '+ Chuyên nhận sửa chữa các loại máy giặt nội địa.\n',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ActionCardButton()
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Thợ Sửa Chữa Tủ Lạnh',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    subtitle: Text(
                      'Thợ Việt nhận sữa chữa tủ lạnh các loại.',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.network(
                    'https://thoviet.com.vn/wp-content/uploads/2019/10/fix_tho-sua-tu-lanh-11-1.jpg',
                    fit: BoxFit.cover,
                    width: 400,
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 5.0, 10.0, 0.0),
                    child: Text(
                      'Một số lỗi thường gặp ở tủ lạnh – tủ đông:\n' +
                          '+ Thời gian làm lạnh kéo dài.\n' +
                          '+ Đèn sáng nhưng tủ lạnh không chạy.\n' +
                          '+ Tủ lạnh phát ra tiếng ồn lớn, có tiếng gõ nhẹ bên trong block.\n' +
                          '+ Có hiện tượng đọng sương bên ngoài.',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ActionCardButton()
                ],
              ),
            ),
            new Text(
              'Công ty TNHH Dịch vụ kỹ thuật Thợ Việt – Thợ điện lạnh:',
              textAlign: TextAlign.start,
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            new Text(
                '– Với đội ngũ kỹ thuật viên có trình độ, tận tình, trang bị đầy đủ công cụ hiện đại đảm bảo cho quý khách hàng được phục vụ nhanh chóng, chất lượng…\n' +
                    '– Tất cả các thiết bị lắp đặt, sửa chữa sẽ được bảo hành dài hạn.\n' +
                    '– Mạng lưới phục vụ rộng khắp thành phố Hồ Chí Minh.'),
            new Text(
              'Thợ Việt với đội ngũ thợ điện lạnh lành nghề, uy tín, chất lượng, phục vụ nhiệt tình chu đáo, giá cả phải chăng.\n',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
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
          Padding(padding: EdgeInsets.all(5)),
          new Text(
            "Thợ Sửa - Lắp Đặt Điện Lạnh",
            textAlign: TextAlign.center,
            style: new TextStyle(
              fontSize: 24,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          titleSection
        ],
      ),
    );
  }
}

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
