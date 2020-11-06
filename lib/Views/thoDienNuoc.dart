import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:appthoviet/ViewModels/ChuDeTrang.dart';

var url = 'lib/images/thoDienNuoc/';

class ThoDienNuoc extends StatelessWidget {
  const ThoDienNuoc({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thợ Điện Nước'),
      ),
      body: ThoDienNuocWidget(),
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

class ThoDienNuocWidget extends StatefulWidget {
  static String routeName = 'views/thoDienNuoc';

  @override
  _ThoDienNuocState createState() => _ThoDienNuocState();
}

class _ThoDienNuocState extends State<ThoDienNuocWidget> {
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
                "Với đội ngũ thợ điện nước chuyên nghiệp, Thợ Việt nhận  thi công, lắp đặt, sửa chữa hệ thống điện, hệ thống cấp thoát nước cho gia đình, cơ quan, công ty, xí nghiệp."),
            new Text(
                "– Thợ lắp đặt điện nước dân dụng, lắp đặt điện nước gia đình, cơ quan, công ty."),
            new Text(
                "– Thợ sửa chữa điện nước tại nhà chuyên sửa chữa điện 1 pha, điện 3 pha công nghiệp."),
            new Text("– Công ty Thợ Việt nhận làm từ những việc nhỏ nhất."),
            new Text("– Mạng lưới phục vụ khắp các quận Tp.Hồ Chí Minh."),
            new Text(
              "Thợ Điện Nước Tại TPHCM",
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            new Text(
                "Hệ thống điện bị chập đường dây điện gây nhảy CB Aptomat không có điện thật là bất tiện trong mọi sinh hoạt:"),
            new Text(
                " – Bạn không thể dùng các thiết bị điện, tủ lạnh, tủ mát chứa đồ ăn sẽ nhanh chóng kém lạnh, hư hỏng đồ ăn."),
            new Text(
                "– Trời nóng mà không có điện để chiếc điều hòa, quạt máy hoạt động. Máy bơm nước không chạy, nhà không có nước."),
            new Text(
                "– Nếu Bạn là xí nghiệp, cơ sở sản xuất, quán ăn, việc không có điện nước khiến nhân viên phải tạm nghỉ, ảnh hưởng rất nhiều đến hoạt động kinh doanh."),
            new Text(
                "Việc sửa điện nước chỉ dành cho người có kiến thức chuyên môn, nếu Bạn chưa có kiến thức, kinh nghiệm, dụng cụ sửa chữa không nên tự ý sửa chữa kẻo tình trạng điện nước nhà bị hư nặng thêm và nguy hiểm, lúc đó Bạn tốn thêm chi phí sửa chữa."),
            new Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.asset(
                    url + 'Banner-sua-dien-nuoc-dien-lanh-hcm.jpg',
                    width: 400,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            new Text(
              'Thợ Sửa Điện 1 - 3 Pha',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            new Text('Thợ Việt chuyên sửa chữa các trường hợp sau:' +
                '\n– Sửa nhanh các trường hợp mất điện theo hệ thống đường dây điện.' +
                '\n– Chuyên lắp đặt thêm ổ điện, đèn trang trí, đèn ngủ,…+ Xử lý nhanh mọi trường hợp rò điện, cháy điện, chập điện, hay điện không ổn định.' +
                '\n– Lắp đặt đồng hồ phụ 3 pha hay 1 pha.' +
                '\n– Kiểm tra tải cho nguồn điện, cân tách pha với điện 3 pha.' +
                '\n– Thi công lại hệ thống điện cho gia đình, nhà ở….' +
                '\n– Thợ lắp đặt, sửa chữa các thiết bị đèn điện, quạt trần…' +
                '\n– Làm gọn gàng lại hệ thống mạng nội bộ, dây điện đi nổi không có ống cách điện.'),
            new GridView.count(
              padding: const EdgeInsets.all(5),
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage(url + 'fix_dien-1-pha-tho-sua-dien.jpg'),
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
                      image:
                          AssetImage(url + 'tho-sua-dien-3-pha-tai-quan-2.jpg'),
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
              'Thợ Sửa Ống Nước Âm - Nổi',
              textAlign: TextAlign.start,
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            new Text('– Thi công lắp đặt, tu sửa, xữ lý các trang thiết bị tolet.\n' +
                '– Nhận thi công lắp đặt máy nước nóng, bình nóng lạnh. +Thợ lắp đặt, sửa máy bơm nước các loại.\n' +
                '– Chuyên sửa chữa ống nước rò rỉ âm tường âm nền.' +
                '– Kiểm tra dò tìm rò rỉ nước xác định chính xác vị trí đường ống nước ngầm bị bể gây rò rỉ thất thoát nước.\n' +
                '– Sửa chữa máy bơm nước, sửa bồn nước bị tràn bồn. Chống thấm tường sàn nhà vệ sinh, chống hôi nhà tắm, toilet.\n' +
                '– Thợ lắp đặt thiết bị vệ sinh bồn cầu, lavabo, bồn tiểu. Sửa bộ xả bồn rửa tay, rửa chén bát.\n' +
                '– Thông nghẹt ống nước, thông thoát sàn toilet, thông bồn cầu, sửa bồn cầu bị chảy nước, tắc nghẹt.\n' +
                '– Vệ sinh bồn chứa nước gia đình, súc rửa bể chứa nước tòa nhà công ty.\n' +
                '  Ngoài ra: Thợ Việt còn cung cấp đội ngũ thợ điện lạnh chuyên dịch vụ như lắp đặt máy lạnh, sửa điện lạnh, sửa chữa máy lạnh, tủ lạnh, vệ sinh rửa máy lạnh, lắp đặt, sửa chữa vệ sinh máy giặt, lắp đặt sửa chữa máy tắm nóng, sửa lò vi sóng….\n'),
            new GridView.count(
              primary: false,
              padding: const EdgeInsets.all(5),
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(url +
                          'Lap-ong-nuoc-nong-nang-luong-mat-troi-cho-nha-dan-tan-phu-1.jpg'),
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
                      image: AssetImage(url +
                          'Lap-ong-nuoc-nong-nang-luong-mat-troi-cho-nha-dan-tan-phu-8.jpg'),
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
              'Nguyên tắc làm việc – Quy trình của thợ sửa điện nước Thợ Việt:',
              textAlign: TextAlign.start,
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            new Text(
              'I. Nguyên tắc làm việc của Thợ Việt',
              textAlign: TextAlign.start,
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            new Text('_ Luôn báo giá cho Khách hàng trước khi lắp đặt, sửa chữa.\n' +
                '_ Nhanh chóng sửa chữa kịp thời giúp Khách hàng tiết kiệm thời gian, đưa hoạt động kinh doanh, sản xuất trở lại bình thường.\n' +
                '_ Tuyệt đối không bày vẽ câu giờ làm tốn chi phí Khách hàng, tốn thời gian chờ đợi!\n' +
                '_ Nếu Khách hàng không hài lòng có thể gọi yêu cầu Cty đổi thợ khác!\n' +
                'Thợ Việt có đội ngũ  kỹ thuật viên nhiệt tình chu đáo. Phong cách làm việc chuyên nghiệp và các máy móc hiện đại.\n'),
            new Text(
              'II. Quy trình làm việc của Thợ Việt',
              textAlign: TextAlign.start,
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            new Text('Với nhiều năm kinh nghiệm trong ngành điện nước bên cạnh đó là đội ngũ nhân viên đông đảo nhiều thợ có kinh nghiệm nhiều năm trong lĩnh vực sửa chữa thi công điện nước dân dụng, điện nước công nghiệp.\n' +
                'Thợ Việt đã và đang hoàn thiện Quy Trình làm việc để phục vụ tốt nhất cho mọi Quý Khách. Dưới đây là quy trình làm việc của chúng tôi:\n' +
                ' 1. Tiếp nhận thông tin Khách Hàng qua Hotline: 0903.532.938  Hoặc qua các mạng xã hôi như  ZALO, FACEBOOK.\n' +
                '2. Nhân viên sẽ sắp xếp thợ phù hợp nhất để tiến xử lý yêu cầu của Quý Khách( vị trí, mức độ công việc,….)\n' +
                '3. Thợ làm xong, Thợ Việt sẽ lưu thông tin của Quý Khách. Việc lưu lại thông tin này nhằm mục đích Bảo Hành cho Quý Khách. Ngoài ra nhưng thông tin này của Khách Hàng hoàn toàn được bảo mật tại công ty.\n'),
            new Text(
              'III. Tiếp nhận thông tin bảo hành – ý kiến đóng góp của Khách Hàng',
              textAlign: TextAlign.start,
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            new Text('Thợ Việt luôn có gắng để đem lại chất lượng dịch vụ tốt nhất cho Quý Khách. Thợ Việt luôn mong muốn nhận được các ý kiến phản hồi dịch vụ. Dưới đây là 3 cách mà Quý Khách có thể phản hồi cho Thợ Việt:\n' +
                ' 1. Phản Hồi trực tiếp qua tổng đài công ty Hotline: 0903.532.938; hoặc liên hệ cho quản lý công ty qua số liên hệ: 0919 532 938.\n' +
                '2. Đóng góp ý kiến phản hồi dịch vụ tại trang đánh Giá Chất Lượng Dịch Vụ của Thợ Việt.' +
                '3. Gửi phản hồ qua FanPage  Công ty Thợ Việt hoặc bản đồ Công ty Thợ Việt.\n' +
                'Thợ Việt luôn cố gắng bảo mang đến cho khách hàng những dịch vụ tốt nhất với giá thành rẻ nhất.\n'),
            new Text(
              'Khi có nhu cầu lắp đặt, sửa chữa điện nước hãy liên hệ ngay cho Thợ Việt để được thi công xử lý nhanh chóng. Rất hân hạnh được phục vụ khách hàng.',
              textAlign: TextAlign.start,
              style: new TextStyle(
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
        ChuDeTrang(
          titleTrang: 'Thợ Sửa Chữa - Lắp Đặt Điện Nước',
        ),
        titleSection
      ],
    ));
  }
}
