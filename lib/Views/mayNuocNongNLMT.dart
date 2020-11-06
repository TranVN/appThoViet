import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:appthoviet/ViewModels/ChuDeTrang.dart';

class MayNuocNongNLMT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MayNuocNongNLMTWidget(),
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

class MayNuocNongNLMTWidget extends StatefulWidget {
  static String routeName = 'views/thoMayNuocNongNLMT';
  @override
  _MayNuocNongNLMTWidgetState createState() => _MayNuocNongNLMTWidgetState();
}

class _MayNuocNongNLMTWidgetState extends State<MayNuocNongNLMTWidget> {
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
            Card(
                child: Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "   Năng lượng mặt trời là một trong những năng lượng sạch mà cả thế giới đang tiến tới. Không những thế việc vận hành hoàn toàn không tốn chi phí, chỉ tốn chi phí duy nhất cho lần đầu lắp đặt.\n" +
                    'Công ty Thợ Việt chuyên nhận lắp máy nước nóng năng lượng mặt trời tại HCM. Khi có nhu cầu sửa chữa – lắp đặt - vệ sinh, Thợ Việt sẽ xử lý một cách nhanh chóng.\n' +
                    'Chuyên hỗ trợ lắp đặt - sửa chữa - vệ sinh tất cả các hãng máy năng lượng mặt trời như: Bình Dương, Tân Á Đại Thành, Ariston, Megasum, Ferroli, Kangaroo, Sơn Hà,….',
              ),
            )),
            new Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.network(
                    'https://thoviet.com.vn/wp-content/uploads/2020/08/sua-may-nuoc-nong-nang-luong-mat-troi.gif',
                    width: 400,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            new Text(
              'Nguyên nhân dẫn đến máy năng lượng bị ô nhiễm',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            new Text(
                '+ Do hệ thống đường nước bơm lên máy năng lượng bị nhiễm phèn.\n' +
                    '+ Máy nước nóng năng lượng mặt trời lâu ngày bị cặn bẩn rong reo bám vào. Gây ảnh hưởng đển nguồn nước sinh hoạt.\n'),
            new Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.network(
                    'https://thoviet.com.vn/wp-content/uploads/2020/07/lap-may-nang-luong-mat-troi.jpg',
                    width: 400,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            new Text(
              'Tiêu chí của dịch vụ vệ sinh máy nước nóng năng lượng mặt trời',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            new Text('+ Nhân viên kĩ thuật lịch sự, làm việc đúng hẹn, thao tác làm việc gọn gàng sạch sẽ, không làm ảnh hưởng đến công việc của khách hàng.\n' +
                '+ Tư vấn hướng dẫn khách hàng sử dụng đúng cách hoàn toàn miễn phí.\n' +
                '+ Đưa ra giải pháp tối ưu nhất, nhằm tiết kiệm chi phí va tiết kiệm thời gian của quý khách.\n' +
                '+ Luôn cam kết mang đến cho quý khách dịch vụ chuyên nghiệp và chất lượng nhất.\n' +
                '+ Việc vệ sinh máy lạnh được nhân viên kĩ thuật có tay nghề đảm nhận.\n' +
                '+ Sau khi vệ sinh máy nước nóng năng lượng mặt trời quý khách sẽ được chúng tôi bảo hành trong suốt quá trình sử dụng.'),
            new Text(
              'Ưu và nhược điểm sử dụng máy năng lượng mặt trời',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            new Text(
              'Ưu điểm:',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            new Text('+ Các hóa đơn tiền điện hàng năm sẽ thấp hơn.\n' +
                '+ Giải pháp tuyệt vời đối với các vùng khí hậu nhận được nhiều ánh nắng mặt trời như TPHCM.\n' +
                '+ Góp phần giảm thải carbon để bảo vệ môi trường.\n' +
                '+ Có nước nóng dùng quanh năm, không lo tình trạng cắt điện thiếu nước nóng.\n' +
                '+ An toàn khi sử dụng 100%, các loại máy nước nóng nóng dùng điện có chỉ số an toàn thấp hơn rất nhiều.\n' +
                '+ Máy tích nhiệt được từ 48 – 96 giờ tùy loại.'),
            new Text(
              'Nhược điểm:',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            new Text('+ Máy nước nóng năng lượng mặt trời chiếm một phần không gian để lắp đặt máy trên mái nhà hay sân thượng.\n' +
                '+ Bạn phải tốn một phần chi phí cho việc đầu tư thiết bị ban đầu.\n' +
                '+ Có thể không có hiệu quả như ở những vùng mà không nhận được nhiều ánh nắng mặt trời. Tuy nhiên ở TPHCM thì có thể hoàn toàn yên tâm vấn đề này.\n' +
                '+ Bồn có thể tạo ra một lượng nhiệt đáng kể, vì vậy vị trí của nó sẽ cần phải được thiết kế cho phù hợp.\n' +
                '+ Cần được bảo trì sau vài năm sử dụng.\n'),
            new Text(
              'Công ty TNHH Dịch Vụ Kỹ Thuật Thợ Việt',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            new Text(
              '– Với đội ngũ kỹ thuật viên có trình độ, tận tình, trang bị đầy đủ công cụ hiện đại đảm bảo cho quý khách hàng được phục vụ nhanh chóng, chất lượng…\n' +
                  '– Tất cả các thiết bị lắp đặt, sửa chữa sẽ được bảo hành dài hạn\n' +
                  '– Mạng lưới phục vụ rộng khắp thành phố Hồ Chí Minh.',
            ),
            new Text(
              'Thợ Việt với đội ngũ thợ chống thấm, điện lạnh, điện nước, vệ sinh,... lành nghề, uy tín, chất lượng, phục vụ nhiệt tình chu đáo, giá cả phải chăng.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
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
        ChuDeTrang(
          titleTrang: 'Máy Nước Nóng Năng Lượng Mặt Trời',
        ),
        titleSection
      ],
    ));
  }
}
