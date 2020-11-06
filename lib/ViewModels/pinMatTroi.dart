import 'package:appthoviet/ViewModels/KDDV.dart';
import 'package:appthoviet/ViewModels/contentApp.dart';
import 'package:appthoviet/ViewModels/ctyThoViet.dart';
import 'package:appthoviet/Views/thoChongTham.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:appthoviet/ViewModels/ChuDeTrang.dart';

class PinMatTroi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PinMatTroiWidget(),
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

class PinMatTroiWidget extends StatefulWidget {
  static String routeName = 'views/pinMatTroi';
  @override
  _PinMatTroiWidgetState createState() => _PinMatTroiWidgetState();
}

class _PinMatTroiWidgetState extends State<PinMatTroiWidget> {
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
                  urlImg: 'lib/images/kddv/efficiency.png',
                  titleKDDV: 'CHẤT LƯỢNG',
                ),
                KDDV(
                  urlImg: 'lib/images/kddv/premium-quality.png',
                  titleKDDV: 'UY TÍN',
                ),
                KDDV(
                  urlImg: 'lib/images/kddv/reputation.png',
                  titleKDDV: 'HIỆU QUẢ CAO',
                ),
              ],
            ),
            DVChongTham(
              urlDVCT: 'lib/images/pinMatTroi/nha-may-nang-luong-mat-troi.jpg',
              titleDVCT: 'Lắp Đặt Tấm Pin Mặt Trời',
              contentDVCT:
                  'Khi khách hàng có nhu cầu lắp đặt pin mặt trời, chúng tôi sẽ cử đội ngũ nhân viên kỹ thuật có tay nghề cao. Nhân viên của Thợ Việt sẽ tư vấn và đưa ra phương án lắp đặt phù hợp. Thợ Việt Chuyên nhận lắp đặt pin mặt trời:\n' +
                      '   + Pin mặt trời trên mái nhà.\n' +
                      '   + Lắp đặt pin mặt trời trên mặt đất',
            ),
            DVChongTham(
              urlDVCT:
                  'lib/images/pinMatTroi/lap-dat-he-thong-pin-mat-troi-1.jpg',
              titleDVCT: 'Sửa Chữa Tấm Pin Mặt Trời',
              contentDVCT:
                  'Đội ngũ nhân viên sửa chữa pin năng lượng mặt trời của chúng tôi chuyên:\n' +
                      '   + Thay tấm pin năng lượng.\n' +
                      '   + Kiểm tra hệ thống điện.\n' +
                      'Chúng tôi đảm bảo sử dụng các linh kiện chính hãng từ các nhà sản xuất có uy tín.',
            ),
            DVChongTham(
              urlDVCT:
                  'lib/images/pinMatTroi/hieu-qua-cua-viec-ve-sinh_result-768x512.jpg',
              titleDVCT: 'Dịch Vụ Vệ Sinh Tấm Pin Mặt Trời',
              contentDVCT:
                  'Chúng tôi sẽ cử một đội ngũ nhân viên vệ sinh pin mặt trời chuyên nghiệp. Và đảm bảo rằng nhân viên vệ sinh của Thợ Việt sẽ:\n' +
                      '   + Có kinh nghiệm trong nghề.\n' +
                      '   + Được đào tạo kiến thức liên quan.\n' +
                      '   + Thái độ làm việc thân thiện.\n' +
                      '   + Tác phong làm việc nhanh chóng.\n' +
                      '   + Trang bị đầy đủ các thiết bị chuyên cho vệ sinh tấm năng lượng mặt trời.\n' +
                      '   + Nhân viên sẽ được trang bị đầy đủ đồ bảo hộ lao động và kiến thức về an toàn lao động.',
            ),
            ContentApp(
              titleCTA: 'Quy Trình Cung Cấp Dịch Vụ',
              textCTA: '– Tiếp nhận thông tin từ khách hàng.\n' +
                  '– Cử nhân viên đến khảo sát thực tế nơi vệ sinh tấm pin năng lượng.\n' +
                  '– Đưa ra phương án và báo giá.\n' +
                  '– Tiến hành công việc vệ sinh tấm pin.\n' +
                  '– Nghiệm thu và thanh toán.\n' +
                  '– Bảo hành và khuyến mãi .\n',
            ),
            DVChongTham(
              urlDVCT:
                  'lib/images/pinMatTroi/cach-ve-sinh-tam-nang-luong-mat-troi.jpg',
              titleDVCT: 'Cách Vệ Sinh Tấm Pin Mặt Trời Tại Nhà',
              contentDVCT:
                  '   + Sử dụng máy xịt nước xịt trực tiếp lên bề mặt tấm pin.\n' +
                      '   + Sau đó sử dụng chất rửa đổ lên để dễ hơn trong việc làm sạch tấm pin.\n' +
                      '   + Dùng cây lau ướt để làm sạch hết bụi bận.\n' +
                      '   + Tiếp đến dùng cây lau khô lau lại một lần nữa.\n' +
                      '   + Sau cùng dọn dẹp mọi thứ xung quanh sạch sẽ và cho vận hành lại tấm pin năng lượng.\n',
            ),
            ContentApp(
              titleCTA: 'Lưu Ý Trong Quá Trình Vệ Sinh Pin Mặt Trời',
              textCTA: '– Những điều dưới đây bạn cần hết sức lưu ý trong quá trình vệ sinh tấm pin mặt trời. Nó sẽ giúp cho bạn tránh các hư hại tổn thất trong quá trình vệ sinh:\n' +
                  '+ Tránh viêc dùng máy xịt có áp suất lớn.\n' +
                  '+ Không sử dụng các chất tẩy rửa có độ tẩy cao.\n' +
                  '+ Việc giẫm đạp lên tấm pin sẽ gây ra hậu quả nghiêm trọng.\n' +
                  '+ Cần nhẹ nhàng trong quá trình vệ sinh.\n' +
                  '+ Tránh vệ sinh vào thời gian mà các tấm pin có nhiệt độ cao. Điều này sẽ ảnh hưởng lớn đến hiệu suất của pin.\n' +
                  '+ Sử nhiệt độ nước phù hợp để tránh gây ra hiện tượng nứt tấm pin do thay đổi nhiệt độ đột ngột của tấm pin.\n' +
                  '+ Nên đọc rõ hướng dẫn sử dụng kỹ trước khi sử dụng tấm pin mặt trời.\n',
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
            titleTrang: 'Vệ Sinh Tấm Pin Năng Lượng Mặt Trời Giá Rẻ',
          ),
          titleSection
        ],
      ),
    );
  }
}
