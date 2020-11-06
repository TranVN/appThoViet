import 'package:appthoviet/ViewModels/contentApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:appthoviet/ViewModels/ChuDeTrang.dart';

var urlKDDV = 'lib/images/kddv/';
var url = 'lib/images/thoSuaNha/';

class ThoSuaNha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thợ Sửa Nhà'),
      ),
      body: ThoSuaNhaWidget(),
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

class ThoSuaNhaWidget extends StatefulWidget {
  static String routeName = 'views/ThoSuaNha';
  @override
  _ThoSuaNhaWidgetState createState() => _ThoSuaNhaWidgetState();
}

class _ThoSuaNhaWidgetState extends State<ThoSuaNhaWidget> {
  Widget titleSection = new Container(
    padding: const EdgeInsets.all(10),
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
                child: Text('– Bạn đang có dự định sử dụng dịch vụ sửa nhà trọn gói để giúp bạn tân trang lại ngôi nhà?\n' +
                    '–  Và bạn mong muốn có được một địa chỉ uy tín để giao phó nhiệm vụ cao cả này?\n' +
                    'Hãy để Thợ Việt với đội ngũ chuyên nghiệp – tay nghề cao sẽ giúp Bạn.\n'),
              ),
            ),
            new GridView.count(
              primary: false,
              padding: const EdgeInsets.all(5),
              crossAxisCount: 3,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              shrinkWrap: true,
              children: <Widget>[
                KDDV(
                  urlImg: urlKDDV + 'premium-quality.png',
                  titleKDDV: 'CHẤT LƯỢNG',
                ),
                KDDV(
                  urlImg: urlKDDV + 'reputation.png',
                  titleKDDV: 'UY TÍN',
                ),
                KDDV(
                  urlImg: urlKDDV + 'efficiency.png',
                  titleKDDV: 'HIỆU QUẢ CAO',
                ),
              ],
            ),
            ContentApp(
              titleCTA: 'Nhận phục vụ khách hàng với các yêu cầu sau:',
              textCTA: '   – Thi công điện nước âm.' +
                  '\n   – Sơn sửa tân trang nhà cũ.' +
                  '\n   – Xây dựng nhà phố.' +
                  '\n   – Tư vấn thiết kế không gian đẹp.',
            ),
            new Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.asset(
                    url + 'son-sua-nha-cu.png',
                    width: 400,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            ContentApp(
              titleCTA: 'Quy trình làm việc',
              textCTA: 'Tiếp nhận thông tin khách hàng:' +
                  '\n   + Liên hệ trực tiếp với Dịch vụ sửa nhà trọn gói Thợ Việt qua Hotline : 0903.532.938.' +
                  '\n   + Liên hệ qua Fanpage : Công Ty Thợ Việt.' +
                  '\n   + Hoặc zalo 0903.532.935 - 0914.439.118. Để được báo giá miễn phí',
            ),
            new Text(
              'Hãy liên hệ ngay dịch vụ sửa điện lạnh tại nhà của Thợ Việt!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            new Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.asset(
                    url + 'CSKH.png',
                    width: 400,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            ContentApp(
              titleCTA: 'Khảo sát thực tế công trình thi công:',
              textCTA:
                  '– Sau khi tiếp nhận thông tin từ phía khách hàng. Thợ Việt sẽ cử đội thợ xuống trực tiếp tại công trình, nhà khách hàng để trao đổi thực tế công việc với quý khách.\n' +
                      '+ Trao đổi kỹ với khách hàng từng vị trí cụ thể.\n' +
                      '+ Đưa ra nhiều phương án cho khách hàng lSựa chọn.\n',
            ),
            new Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.asset(
                    url + 'thietke.png',
                    width: 400,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            ContentApp(
              titleCTA: 'Kí kết hợp đồng và tiến hành thi công:',
              textCTA: ' – Trao đổi mọi nội dung với khách hàng và tiến hành báo giá.\n' +
                  '+ Khách Hàng đồng ý giá.\n' +
                  '+ Thợ Việt lên Hợp Đồng.\n' +
                  '+ Khách Hàng đồng ý báo giá cũng như Hợp Đồng.\n' +
                  '+ Đội sửa nhà trọn gói Thợ Việt tiến hành thi công theo phương án đã tiến hành.\n' +
                  '+ Dọn dẹp sạch sẽ hoàn thiện công trình trước khi bàn giao.\n' +
                  '+ Bàn giao công trình đúng thời gian.\n',
            ),
            new Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.asset(
                    url + 'doi-tac-sua-nha-tron-goi.jpg',
                    width: 400,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            ContentApp(
              titleCTA: 'Cam kết của Thợ Việt',
              textCTA: 'Tự hào là đơn vị uy tín trong lĩnh vực thi công công trình, Công ty TNHH Dịch Vụ Kỹ Thuật Thợ Việt cam kết dịch vụ sửa nhà trọn gói:\n' +
                  '– Hợp đồng ký kết rõ ràng, chia làm 2 bản mỗi bên sẽ sở hữu một bản.\n' +
                  '– Thi công đúng với những yêu cầu thiết kế đã được thống nhất.\n' +
                  '– Bàn giao công trình trong đúng thời gian hợp đồng đã ghi.\n' +
                  '– Giá thành dịch vụ hợp lý, cạnh tranh so với các đơn vị khác.\n' +
                  '– Vật tư sửa chữa đúng như báo giá.(Nếu có thay đổi công ty sẽ thông báo trước cho quý khách).\n' +
                  '– Bảng báo giá rõ ràng chi tiết, nói không với tình trạng gian lận lừa đảo về giá và chất lượng thi công.\n' +
                  '– Trong quá trình thi công tuyệt đối không làm tổn thất, hư hao tài sản, của cải trong nhà của khách hàng.\n' +
                  '– Không thu thêm bất cứ một khoản chi phí nào khi đã phương án sửa chữa đã được lên và báo giá dịch vụ sửa nhà trọn gói.\n' +
                  '– Tuân thủ các quy định, tiêu chuẩn về sửa chữa nhà của, luật xây dựng và an toàn lao động.\n' +
                  '– Trước khi bàn giao công trình phải đảm bảo được gọn gàng, vệ sinh sạch sẽ.\n' +
                  '– Sau khi bàn giao cam kết nhà đẹp, bên và bảo hành lâu dài.\n' +
                  '– Có đầy đủ mọi giấy tờ, hóa đơn, bảo hành,…đảm bảo tối đa quyền lợi cho phía khách hàng.\n',
            ),
            Card(
              child: Text(
                'QUÝ KHÁCH VUI LÒNG LIÊN HỆ TRỰC TIẾP VĂN PHÒNG CÔNG TY QUA HOTLINE : 0903.532.938',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            )
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
          titleTrang: 'Dịch Vụ Sửa Nhà Trọn Gói',
        ),
        titleSection
      ],
    ));
  }
}

class KDDV extends StatelessWidget {
  KDDV({this.urlImg, this.titleKDDV, this.subKDDV});
  final String urlImg;
  final String titleKDDV;
  final String subKDDV;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          urlImg,
          width: 60,
          fit: BoxFit.cover,
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              titleKDDV,
              textAlign: TextAlign.center,
            ))
      ],
    ));
  }
}
