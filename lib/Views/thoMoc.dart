import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:url_launcher/url_launcher.dart';

class ThoMoc extends StatelessWidget {
  const ThoMoc({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thợ Mộc'),
      ),
      body: ThoMocWidget(),
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

class ThoMocWidget extends StatefulWidget {
  static String routeName = 'views/thoDienNuoc';

  @override
  _ThoMocWidgetState createState() => _ThoMocWidgetState();
}

class _ThoMocWidgetState extends State<ThoMocWidget> {
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
                "   Là một trong những đơn vị dẫn đầu về lĩnh vực sơn sửa đồ gỗ nội thất tại nhà. Chúng tôi luôn lấy tiêu chuẩn chất lượng cao để cung cấp dịch vụ khách hàng. Bằng việc sử dụng các công nghệ, máy móc hiện đại."),
            new Text(
                "   Cộng thêm đội ngũ thợ sửa chữa chuyên nghiệp, có tay nghề cao. Thợ Việt đã mang đến những giá trị thật sự về thời gian, chất lượng và giá cả."),
            new Text(
                "   Cho dù mục đích của bạn là sửa chữa, khôi phục hay thay đổi màu sắc đồ gỗ đề phù hợp với không gian sống. Đội ngũ nhân viên chúng tôi đều đáp một cách tốt nhất."),
            new Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.network(
                    'https://thoviet.com.vn/wp-content/uploads/2019/01/tho-moc-son-sua-do-go-68.jpg',
                    width: 400,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      '– Báo giá sơn sửa đồ gỗ nhanh chóng cho Khách hàng qua zalo: 0903532938.\n' +
                          '– Thợ Việt cam kết các thợ mộc công ty kinh nghiệm trên 10 năm trong nghề mộc, thợ đã được Công ty quản lý hồ sơ lý lịch, giúp Khách hàng yên tâm, đảm bảo an toàn cho gia đình.\n' +
                          '– Thợ Việt có xuất hoá đơn đỏ, nhận thanh toán chuyển khoản.\n' +
                          '– Quý Khách không hài lòng nhân viên, Thợ Việt sẽ đổi thợ khác, Công ty luôn mong muốn Quý Khách hài lòng khi sử dụng dịch vụ.\n' +
                          '– Thợ Việt thành lập từ năm 2011, dịch vụ điện nước, điện lạnh, mộc nhận được sự tin yêu của người Sài Gòn!',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            new Text(
              "Lợi ích của Thợ Việt mang lại cho Khách hàng",
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            new Text(
                "+ Mang lại sự phong phú, đa dạng cho khách hàng với hàng nghìn bảng màu sắc có sẳn."),
            new Text(
                "+ Với một cái nhìn chuyên nghiệp, các chuyên gia của chúng tôi có thể phối hợp màu một cách hài hòa nhất."),
            new Text(
                "+ Các loại sơn của chúng tôi đều có chất lượng tốt nhất trên thị trường hiện nay."),
            new Text("+ Sửa chữa đồ gỗ nội thất một cách nhanh chóng."),
            new Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.network(
                    'https://thoviet.com.vn/wp-content/uploads/2019/01/tho-moc-son-sua-do-go-57.jpg',
                    width: 400,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            new Text(
              'Dịch vụ sơn sửa lại đồ gỗ nội thất',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            new Text(
                '– Sơn sửa cửa sổ, cửa thông phòng, cửa đi bị sập xệ khó đóng hư hỏng cong vênh.' +
                    '\n– Sửa chữa, sơn lại bàn ghế, giường tủ, thay hậu tủ, thay đợt tủ.' +
                    '\n– Tủ bếp bị mốt một, xập xệ, xuống cấp.' +
                    '\n– Sửa sơn lại cầu thang, lan can.' +
                    '\n– Sàn gỗ bị co ngót.'),
            new Text(
              'Quy trình tiếp nhận thông tin sơn sửa đồ gỗ nội thất',
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            new Text('– Tiếp nhận thông tin khách hàng.' +
                '\n– Cho nhân viên tới khảo sát, tư vấn, báo giá.' +
                '\n– Sau khi thống nhất, chúng tôi triển khai công việc.' +
                '\n– Quý khách nghiệm thu công việc sau khi hoàn thành.' +
                '\n– Thanh toán và viết hóa đơn.'),
            new Text(
              'Cùng Thợ Việt trải nghiệm chất lượng dịch vụ sơn sửa đồ gỗ nội thất tại nhà với đội ngũ có tay nghề cao. Luôn chuyên nghiệp, nhiệt tình mọi lúc, mọi nơi mà khách hàng yêu cầu..',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
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
          "Thợ Sửa Chữa - Lắp Đặt Đồ Gỗ",
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
