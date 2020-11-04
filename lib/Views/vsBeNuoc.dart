import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:url_launcher/url_launcher.dart';

class VSBN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vệ Sinh Bể Nước'),
      ),
      body: VSBNWidget(),
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

class VSBNWidget extends StatefulWidget {
  static String routeName = 'views/vsBeNuoc';
  @override
  _VSBNWidgetState createState() => _VSBNWidgetState();
}

class _VSBNWidgetState extends State<VSBNWidget> {
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
              "   Thợ Vệ sinh bồn(bể ngầm) nước Thợ Việt nhận Vệ sinh bồn(bể ngầm) nước có dung tích từ 0.5 m3 đến trên 20m3. Thợ Việt cung cấp bảng giá Vệ sinh bồn(bể ngầm) nước tham khảo cho Bạn.\n" +
                  '   Thời gian vệ sinh còn tùy thuộc khá lớn vào nguồn nước và mức độ sử dụng nước của từng bồn.\n' +
                  '   Tuy vậy, Bạn nên vệ sinh định kỳ bồn chứa nước 3 tháng 1 lần. Để đảm bảo nguồn nước được chứa trong bồn luôn sạch sẽ bảo đảm an toàn cao nhất cho sức khỏe của Bạn và Gia đình.',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            new Text(
              'Vì sao Bạn cần Vệ sinh bồn(bể ngầm) nước thường xuyên?',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            new Text('    + Với những nơi dùng nguồn nước xấu như nước có phèn thường bị đục, lắng cặn, nhưng ngay cả đường nước thủy cục nhiều khi cũng bị cặn, đục do đường ống cũ bị bám bẩn lâu năm.\n' +
                '   + Với nguồn nước giếng thì nên súc rửa khoảng một tháng/lần.\n' +
                '   + Nếu có nguồn nước tốt hơn như nước máy ở các khu vực trong nội thành, có thể vệ sinh mỗi quý/một lần. Có như vậy mới bảo đảm sạch, có nguồn nước trong sử dụng.\n' +
                '   + Mặt khác, nếu để cặn bẩn bám (trong phèn có acid) vào các đường hàn bồn inox thường xuyên sẽ gây gỉ sét và chỗ này là nguyên nhân gây rò rỉ nước.\n'),
            new GridView.count(
              padding: const EdgeInsets.all(5),
              crossAxisCount: 3,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              shrinkWrap: true,
              children: <Widget>[
                KDDV(
                  urlImg:
                      'https://thoviet.com.vn/wp-content/uploads/2019/10/fix_ve-sinh-bon-nuoc-inox-quan-11-5-e1544773389848-1.jpg',
                ),
                KDDV(
                  urlImg:
                      'https://thoviet.com.vn/wp-content/uploads/2019/10/fix_ve-sinh-bon-nuoc-inox-quan-11-5-e1544773389848-7.jpg',
                ),
                KDDV(
                  urlImg:
                      'https://thoviet.com.vn/wp-content/uploads/2019/10/fix_ve-sinh-bon-nuoc-inox-quan-11-5-e1544773389848-9.jpg',
                ),
              ],
            ),
            new Text(
              "Bảng giá vệ sinh bồn nước inox, bồn nhựa",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            BangGiaVSBN(
              titleCT: 'Vệ sinh bồn(bể ngầm) dưới 500 lít',
              subtitleCT: 'Giá từ: 250.000đ - 350.000đ',
            ),
            BangGiaVSBN(
              titleCT: 'Vệ sinh bồn(bể ngầm) Từ 500 - 1000 lít',
              subtitleCT: 'Giá từ: 350.000đ - 450.000đ',
            ),
            BangGiaVSBN(
              titleCT: 'Vệ sinh bồn(bể ngầm) Từ 1500 - 2000 lít',
              subtitleCT: 'Giá từ: 450.000đ - 550.000đ',
            ),
            BangGiaVSBN(
              titleCT: 'Vệ sinh bồn(bể ngầm) Từ 2000 - 5000 lít',
              subtitleCT: 'Giá từ: 500.000đ - 650.000đ',
            ),
            BangGiaVSBN(
              titleCT: 'Vệ sinh bồn(bể ngầm) Trên 5.000 lít',
              subtitleCT: 'Khảo sát báo giá trước khi làm',
            ),
            new Text(
              '(Bảng giá vệ sinh bồn nước mang tính chất tham khảo. Hãy liên hệ chúng tôi để biết giá chính xác nhất.)',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
            ),
            new Text(
              'Một số tác hại nếu Bạn không vệ sinh, súc rửa bồn nước định kỳ:',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            new Text('+ Bồn nước sau khi sử dụng một thời gian sẽ chứa cát, rong rêu. Sẽ gây tắc nghẽn đường ống dẫn nước. Dẫn đến vòi nước chảy yếu, chảy chậm, và lâu dần sẽ tắc nước\n' +
                '+ Bồn nước dùng lâu ngày sẽ tích tụ lượng phèn gây rỉ sét. Gây hư hỏng bồn rò rỉ, mục bồn inox - đặc biệt đối với khu vực dùng nước giếng.\n' +
                '+ Nhiều bằng chứng khoa học cho thấy, các loại virus, vi khuẩn trong nguồn nước. Thủ phạm chính gây ra 85% các bệnh nhi khoa và 65% bệnh tật của người lớn.\n' +
                '+ Một số trường hợp nước cấp từ bồn nước xuống yếu do đường ống bị tắc nghẹt, thông nghẹt đường ống.\n' +
                '+ Nước cấp thuỷ cục có chứa Clorin tác dụng với luppe máy bơm bằng gang làm phát sinh vi khuẩn sắt. Làm hư hại các đường ống luppe, hư luppe, một số luppe nước PCCC. Gây hư hại làm nước trong ống chảy về bể chứa gây ô nhiễm nặng, có mùi hôi khó chịu.\n' +
                '+ Một số trường hợp sử dụng nguồn nước bẩn do bồn chứa nước bị ô nhiễm. Gây bị dị ứng da, bị viêm đường ruột, về lâu dài rất hại sức khỏe con người, đặc biệt là trẻ nhỏ.\n' +
                '+ Vi khuẩn sắt làm bồn inox lâu ngày bị rỉ sét, gây lũng bồn chứa, thất thoát nước. Bạn phải tốn tiền hàn bồn, hoặc thay mới bồn inox khác.'),
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
          "Vệ Sinh Máy Nước Nóng Năng Lượng Mặt Trời",
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

class BangGiaVSBN extends StatelessWidget {
  BangGiaVSBN({this.titleCT, this.subtitleCT});
  final String titleCT;

  final String subtitleCT;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Card(
        color: Colors.grey[200],
        clipBehavior: Clip.antiAlias,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 5, 0),
              child: new Text(titleCT,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            ListTile(
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

class KDDV extends StatelessWidget {
  KDDV({this.urlImg});
  final String urlImg;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(urlImg),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
      // padding: const EdgeInsets.all(8),
    );
  }
}
