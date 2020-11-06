import 'package:appthoviet/ViewModels/KDDV.dart';
import 'package:appthoviet/ViewModels/contentApp.dart';
import 'package:appthoviet/ViewModels/ctyThoViet.dart';
import 'package:appthoviet/Views/thoChongTham.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:appthoviet/ViewModels/ChuDeTrang.dart';

var urlKDDV = 'lib/images/kddv/';
var url = 'lib/images/mayNuocNong/';

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
              shadowColor: Colors.grey,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Text(
                  "Với cái tâm làm nghề Thợ Việt Luôn hướng tới dịch vụ tuyệt vời nhất cho mọi khách hàng. Thợ Việt luôn khẳng định dịch vụ với 3 yếu tố sau:",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                  urlImg: urlKDDV + 'efficiency.png',
                  titleKDDV: 'CHẤT LƯỢNG',
                ),
                KDDV(
                  urlImg: urlKDDV + 'premium-quality.png',
                  titleKDDV: 'UY TÍN',
                ),
                KDDV(
                  urlImg: urlKDDV + 'reputation.png',
                  titleKDDV: 'HIỆU QUẢ CAO',
                ),
              ],
            ),
            DVChongTham(
              urlDVCT: url + 'lap-may-nang-luong-mat-troi-768x432.jpg',
              titleDVCT: 'Lắp Đặt Máy Nước Nóng NLMT',
              contentDVCT:
                  '   + Là thiết bị sử dụng ánh nắng mặt trời, khi đó nguồn nhiệt sẽ được hấp thụ vào ống đầu mà chuyển hóa thành nhiệt giúp làm nóng nước trong bình\n' +
                      '   + Hiện nay, đây là thiết bị được sử dụng rất nhiều, tuy nhiên để lắp đặt thì rất khó và giá rất cao.\n' +
                      '   + Giá lắp đặt giao động vào khoảng 300.000đ – 600.000đ',
            ),
            DVChongTham(
              urlDVCT: url + 'sua-may-nuoc-nong-nang-luong.jpg',
              titleDVCT: 'Thợ Sửa Chữa Bình Nước Nóng Năng Lượng Mặt Trời',
              contentDVCT: '+ Tư vấn, thi công, lắp đặt bình nước nóng năng lượng mặt trời.\n' +
                  '+ Lắp đặt, sửa chữa máy bơm tăng áp nóng lạnh.\n' +
                  '+ Sửa chữa, thay mới, đưa ra giải pháp an toàn, tiết kiệm điện trở đốt của bình nước nóng năng lượng mặt trời.\n' +
                  '+ Khắc phục mọi sự cố của bình nước nóng năng lượng mặt trời.\n' +
                  '+ Súc rửa, vệ sinh bình nước nóng năng lượng mặt trời.\n' +
                  '+ Thay roong cho bình bảo ôn, roong ống thủy tinh.\n' +
                  '+ Thay mới bình bảo ôn, chân bình năng lượng, ống nước nóng lạnh PPR.\n',
            ),
            DVChongTham(
              urlDVCT: url + 'sua-may-nuoc-nong-nang-luong-mat-troi.gif',
              titleDVCT: 'Vệ Sinh Máy Nước Nóng Năng Lượng Mặt Trời',
              contentDVCT: '+ Nhân viên kĩ thuật lịch sự, làm việc đúng hẹn, thao tác làm việc gọn gàng sạch sẽ, không làm ảnh hưởng đến công việc của khách hàng.\n' +
                  '+ Tư vấn hướng dẫn khách hàng sử dụng đúng cách hoàn toàn miễn phí.\n' +
                  '+ Đưa ra giải pháp tối ưu nhất, nhằm tiết kiệm chi phí va tiết kiệm thời gian của quý khách.\n' +
                  '+ Luôn cam kết mang đến cho quý khách dịch vụ chuyên nghiệp và chất lượng nhất.\n' +
                  '+ Việc vệ sinh máy nước nóng năng lượng mặt trời được nhân viên kĩ thuật có tay nghề đảm nhận.\n' +
                  '+ Sau khi vệ sinh máy nước nóng năng lượng mặt trời quý khách sẽ được chúng tôi bảo hành trong suốt quá trình sử dụng.',
            ),
            Card(
              color: Colors.lightBlue,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Text(
                  'Ưu và Nhược Điểm Khi Sử Dụng Máy Nước Nóng Năng Lượng Mặt Trời',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ContentApp(
              titleCTA: 'Ưu điểm:',
              textCTA: '– Sử dụng năng lượng tự nhiên của mặt trời để làm nóng nước.\n' +
                  '– Các hóa đơn tiền điện hàng năm sẽ thấp hơn.\n' +
                  '– Giải pháp tuyệt vời đối với các vùng khí hậu nhận được nhiều ánh nắng mặt trời như TPHCM.\n' +
                  '– Góp phần giảm thải carbon để bảo vệ môi trường.\n' +
                  '– Có nước nóng dùng quanh năm, không lo tình trạng cắt điện thiếu nước nóng.\n' +
                  '– An toàn khi sử dụng 100%, các loại máy nước nóng nóng dùng điện có chỉ số an toàn thấp hơn rất nhiều.\n' +
                  '– Máy tích nhiệt được từ 48 – 96 giờ tùy loại.',
            ),
            ContentApp(
              titleCTA: 'Nhược điểm:',
              textCTA: '– Máy nước nóng năng lượng mặt trời chiếm một phần không gian để lắp đặt máy trên mái nhà hay sân thượng.\n' +
                  '– Bạn phải tốn một phần chi phí cho việc đầu tư thiết bị ban đầu.\n' +
                  '– Có thể không có hiệu quả như ở những vùng mà không nhận được nhiều ánh nắng mặt trời. Tuy nhiên ở TPHCM thì có thể hoàn toàn yên tâm vấn đề này.\n' +
                  '– Bồn có thể tạo ra một lượng nhiệt đáng kể, vì vậy vị trí của nó sẽ cần phải được thiết kế cho phù hợp.\n' +
                  '– Cần được bảo trì sau vài năm sử dụng.',
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
            titleTrang: 'Máy Nước Nóng Năng Lượng Mặt Trời',
          ),
          titleSection
        ],
      ),
    );
  }
}
