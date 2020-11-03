import 'package:flutter/material.dart';

class DoNuocRoRi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dò Nước Rò Rỉ'),
      ),
      body: DoNuocRoRiWidget(),
    );
  }
}

class DoNuocRoRiWidget extends StatefulWidget {
  static String routeName = 'views/thoDoNuocRoRi';
  @override
  _DoNuocRoRiWidgetState createState() => _DoNuocRoRiWidgetState();
}

class _DoNuocRoRiWidgetState extends State<DoNuocRoRiWidget> {
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
                "   Thợ Việt chuyên nhận dò tìm rò rỉ nước âm, kiểm tra đường ống nước bị bể ngầm và sửa chữa đường ống nước bể(vỡ) ngầm gây thất thoát nước cho hộ gia đình Tại Tp Hồ Chí Minh, Bình Dương, Đồng Nai.\n" +
                    '   Dò tìm rò rỉ nước cho tòa nhà khu công nghiệp tại các tỉnh Tiền Giang, Bến Tre, Vũng Tàu, Long An, Tây Ninh, Lâm Đồng, Bình Dương, Đồng Nai, ...'),
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
                      image: NetworkImage(
                          'https://thoviet.com.vn/wp-content/uploads/2020/06/do-tim-ro-ri-nuoc.jpg'),
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
                          'https://thoviet.com.vn/wp-content/uploads/2019/10/fix_Do-tim-ro-ri-that-thoat-nuoc-4.jpg'),
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
                '   Với trang bị máy móc hiện đại. Thợ dò tìm nước rò rỉ của Thợ Việt nhận dò tìm nước thất thoát ở những vị trí khó nhất. Mà các đơn vị khác có thể không làm được:'),
            new Text(
                '   + Nhận dò tìm cho các tòa nhà, trường học, nhà máy, khu công nghiệp nội và ngoại thành TP Hồ Chí Minh.\n' +
                    '   + Xử lý các đường ống nước lớn bị rò rỉ nhanh chóng. Tiết kiệm thời gian và tiền bạc cho Khách Hàng.\n'),
            new Text(
              'Nguyên nhân dẫn tới rò rỉ nước',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            new Text('+ Khi mua nhà xây trọn gói thì đa số chủ đầu tư sẽ chọn những thiết bị kém chất lượng. Để tiết kiệm chi phí dẫn tới sử dụng được thời gian thì bị vỡ, bục.\n' +
                '+ Với đường ống nước đi âm nền thì việc nền nhà bị sụt lún cũng sẽ làm cho ống nước bị nứt, gãy.\n' +
                '+ Không có kế hoạch bảo dưỡng hoặc nâng cấp đúng thời gian. Cái gì cũng có tuổi thọ nhất định, ống nước cũng vậy. Sẽ bị bào mòn theo thời gian cộng với áp lực nước rất mạnh rất dễ dẫn đến bục gãy.\n'),
            new Text(
              'Dấu hiệu cho thấy hiện tượng rò rỉ nước',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            new Text('+ Hóa đơn tiền điện nước tăng đột ngột, mặc dù nhu cầu sử dụng không nhiều.\n' +
                '+ Đồng hồ nước vẫn quay khi tất cả thiết bị xã nước đều bị khóa.\n' +
                '+ Máy bơm hoạt động liên tục.\n' +
                '+ Có hiện tượng mọc rêu tại những đường ống nước đi qua...\n' +
                '+ Bồn chứa cạn nước vào buổi sáng, mặc dù không sử dụng vào tối hôm trước.\n' +
                '+ Áp lực nước yếu, ngay cả trong những thời gian dùng nước ít.\n' +
                '+ Hầu hết các hệ thống đường ống nước đều được thiết kế âm.' +
                'Do đó khi xảy ra hiện tượng rò rỉ nước thì rất khó khăn trong việc xác định vị trí rò rỉ. Vì vậy, bạn cần tìm đến dịch vụ dò tìm rò rỉ nước với kinh nghiệm cùng máy móc đầy đủ để khắc phục'),
            new Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.network(
                    'https://thoviet.com.vn/wp-content/uploads/2020/06/dhnuoc.jpg',
                    width: 400,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            new Text('Bảng giá tham khảo cho dịch vụ dò tìm rò rỉ nước:',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
            BangGiaDoNuocRoRi(
              titleCT: 'Dò nước dò rỉ 1',
              contentCT: 'Sửa ống nước nổi rò rỉ\n' +
                  'Bồn cầu rò rỉ nước\n' +
                  'Vòi nước bị rò rỉ\n' +
                  'Ống nước bể thấy chỗ\n' +
                  'Ghi chú: Không cần sử dụng máy dò tìm chuyên dụng',
              subtitleCT: 'Giá từ: 150,000 đ - 350,000 đ',
            ),
            BangGiaDoNuocRoRi(
              titleCT: 'Dò nước dò rỉ 2',
              contentCT:
                  'Dò tìm đường ống nước trong gia đình bị bể ngầm không thấy vị trí bể, sử dụng máy dò chuyên dụng có thể dò được ống nước sâu hơn 2 mét. Dưới các lớp bê tông, đường nhựa, đất sét....',
              subtitleCT: 'Giá từ: 800,000 đ - 1,200,000 đ',
            ),
            BangGiaDoNuocRoRi(
              titleCT: 'Dò nước dò rỉ 3',
              contentCT:
                  'Đối với công ty, nhà máy, khu dân cư, tòa nhà, khu công nghiệp... Thợ sẽ liên hệ, tiến hành khảo sát báo giá miễn phí! Lên kế hoạch, nhanh chóng thực hiện theo đúng kế hoạch đã thống nhất giữa 2 bên.',
              subtitleCT: 'Giá từ: Khảo sát báo giá',
            ),
            GioiThieuMayDo(
              urlDVCT:
                  'https://thoviet.com.vn/wp-content/uploads/2019/07/2_abb_stethophon_04_funk_mit_zubehoer_06.jpg',
              titleDVCT: 'Máy Dò SEWERIN',
              contentDVCT:
                  'Một trong những thiết bị được nhập khẩu trực tiếp từ Đức. Có khả năng dò tìm được vị trí ống nước bể ngầm độ sâu từ 2 đến 3 m. Kết hợp với các thiết bị trong cùng bộ công cụ thì dòng máy SEWERIN là một đối thủ nặng ký trong lĩnh vực dò tìm nước âm rò rỉ.',
            ),
            GioiThieuMayDo(
              urlDVCT:
                  'https://thoviet.com.vn/wp-content/uploads/2019/07/images.jpg',
              titleDVCT: 'Máy dò nước Gen Ear',
              contentDVCT:
                  'Xuất sứ từ Mỹ.  Sử dụng cảm biến mặt đất băng tần khá lớn. Độ nhạy: 1,00V / g ở 400 Hz (Tối đa).',
            ),
            GioiThieuMayDo(
              urlDVCT:
                  'https://thoviet.com.vn/wp-content/uploads/2019/07/s-l300-1.jpg',
              titleDVCT: 'Máy Dò Hydro Lux',
              contentDVCT:
                  'Là máy dò tìm chuyên dụng dành cho các đường ống có dộ sâu lớn, qua nhiều vật liệu cứng như nền xi măng, đường nhựa, bê tông... sửa dụng công nghệ Xem và nghe rò rỉ với công nghệ DSA với chất lượng âm thanh cao.',
            ),
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
        new Text(
          "Chuyên Gia Dò Tìm Rò Rỉ Nước",
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

class BangGiaDoNuocRoRi extends StatelessWidget {
  BangGiaDoNuocRoRi({this.titleCT, this.contentCT, this.subtitleCT});
  final String titleCT;
  final String contentCT;
  final String subtitleCT;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Card(
        color: Colors.grey[200],
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            new Text(titleCT,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            ListTile(
              title: Text(contentCT),
              subtitle: Text(
                subtitleCT,
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.blue,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GioiThieuMayDo extends StatelessWidget {
  GioiThieuMayDo({this.urlDVCT, this.titleDVCT, this.contentDVCT});
  final String urlDVCT;
  final String titleDVCT;
  final String contentDVCT;
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.network(
            urlDVCT,
            fit: BoxFit.cover,
            width: 400,
            height: 200,
          ),
          ListTile(
            title: Text(
              titleDVCT,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 5.0),
            child: Text(
              contentDVCT,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
        ],
      ),
    );
  }
}
