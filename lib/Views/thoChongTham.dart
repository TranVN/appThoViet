import 'package:appthoviet/ViewModels/KDDV.dart';
import 'package:flutter/material.dart';
import 'package:appthoviet/ViewModels/contentApp.dart';
import 'package:appthoviet/ViewModels/BangGia.dart';
import 'package:appthoviet/ViewModels/ChuDeTrang.dart';

var urlKDDV = 'lib/images/kddv/';
var url = 'lib/images/chongTham/';

class ThoChongTham extends StatelessWidget {
  const ThoChongTham({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thợ Chống Thấm'),
      ),
      body: ThoChongThamWidget(),
    );
  }
}

class ThoChongThamWidget extends StatefulWidget {
  static String routeName = 'views/ThoChongTham';
  @override
  _ThoChongThamWidgetState createState() => _ThoChongThamWidgetState();
}

class _ThoChongThamWidgetState extends State<ThoChongThamWidget> {
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
              urlDVCT: url + '2407-20-Chong-tham-san-thuong-2.jpg',
              titleDVCT: 'CHỐNG THẤM SÂN THƯỢNG',
              contentDVCT:
                  '+ Nhận thi công chống thấm sân thượng đã lót gạch.\n' +
                      '+ Chống thấm sân thượng chưa hoàn thiện.\n' +
                      '+ Chống thấm sân thượng bằng sơn chống thấm.',
            ),
            DVChongTham(
              urlDVCT: url + '2407-20-sua-chua-tham-tuong-nha-A-Linh-8.jpg',
              titleDVCT: 'XỬ LÝ CHỐNG THẤM TRONG NHÀ TẮM',
              contentDVCT: '+ Xử lý thấm nước do hộp gen.\n' +
                  '+ Xử lý thấm lỗ thoát sàn nhà tắm.\n' +
                  '+ Làm lại gạch nền xử lý thấm.',
            ),
            DVChongTham(
              urlDVCT: url + 'chongthamtuongnha.jpg',
              titleDVCT: 'CHỐNG THẤM TƯỜNG NHÀ',
              contentDVCT:
                  '+ Thi công sơn chống thấm. Xử lý nứt chân chim tường nhà.\n' +
                      '+ Và các tình trạng thấm khác.',
            ),
            BangGia(
              titleCT: 'Phương án thi công chống thấm 1',
              contentCT:
                  'Khắc phục hiện tượng nứt, khe nứt, khe co giản, khe lún, nứt mao dẫn sàn bê tông bằng Grout Quicseal 201, Mariseal 250, vải polyester, Mariseal aqua prime',
              subtitleCT: 'Giá từ: 150,000 đ/m²',
            ),
            BangGia(
              titleCT: 'Phương án thi công chống thấm 2',
              contentCT:
                  'Chống thấm sàn bê tông, bằng giải pháp phủ màng chống thấm dạng lỏng liền mạch; vật liệu chống thấm gốc polyurethane, arylic 1 thành phần đồng nhất',
              subtitleCT: 'Giá từ: 270,000 đ/m²',
            ),
            BangGia(
              titleCT: 'Phương án thi công chống thấm 3',
              contentCT:
                  'Chống thấm tường, ban công, vách tầng hầm, hố sụt tầng hầm,bằng màng chống thấm dạng lỏng gốc polyurethane (Mariseal 250), chất chống thấm dạng tinh thể thẩm thấu xi măng Quicseal 111, Quicseal 104s. (Giá trên chưa bao gồm chi phí tạo lớp gia cố bảo vệ màng',
              subtitleCT: 'Giá từ: 300,000 đ/m²',
            ),
            BangGia(
              titleCT: 'Phương án thi công chống thấm 4',
              contentCT:
                  'Dùng hóa chất chống thấm dạng lỏng; Quicseal 104S, 103, 124 và Mariseal 250, kết hợp chất chống thấm tinh thể thẩm thấu xi măng Quicseal 111, trong xử lý chống thấm bể bơi, vách tầng hầm, sàn nhà vệ sinh, hố thang máy, sênô, logia',
              subtitleCT: 'Giá từ: 170,000 đ/m²',
            ),
            BangGia(
              titleCT: 'Phương án thi công chống thấm 5',
              contentCT:
                  'Chống thấm sàn mái, sàn bê tông,  bằng Quicseal 104s. Là vật liệu chống thấm mới: dạng lỏng, một thành phần; có nguồn gốc tinh thể xi măng và polymer. Sản phẩm thân thiện với thiên nhiên và con người (cần tạo lớp gia cố bảo vệ bề mặt).',
              subtitleCT: 'Giá từ: 150,000 đ/m²',
            ),
            BangGia(
              titleCT: 'Phương án thi công chống thấm 6',
              contentCT:
                  'Dùng vải không dệt polyester chống nứt, grout Quicseal 201, kết hợp với màng chống thấm gốc Arylic có độ đàn hồi cao. Ngăn ngừa chống thấm tường, rò rỉ nước do tường bị nứt chân chim hiệu quả nhất.',
              subtitleCT: 'Giá từ: 136,000 đ/m²',
            ),
            BangGia(
              titleCT: 'Phương án thi công chống thấm 7',
              contentCT:
                  'Khu vực ẩm ướt, ngưng đọng nước như; hạng mục chống thấm: bể bơi, ban công, nhà tắm, tầng hầm, mương thu nước bê tông, hố PIT thang máy được đề xuất sử dụng vật liệu tạo màng ngăn nước 2 thành phần gốc polymer kết hợp tinh thể thẩm thấu xi măng Quicseal 111, Aquafin 2K, hoặc Mariseal 300 (cần tạo lớp bảo vệ màng).',
              subtitleCT: 'Giá từ: 200,000 đ/m²',
            ),
            BangGia(
              titleCT: 'Phương án thi công chống thấm 8',
              contentCT:
                  'Chống thấm nhà vệ sinh,nhà bếp, bồn nước, chậu hoa, đường ống nước, công trình có sắt thép lộ thiên bằng phương pháp dùng vật liệu chống thấm Mariseal 250, Mariseal 300, Quicseal 124 dạng lỏng gốc acrylic, siêu bám dính, kháng nước hữu hiệu chống thấm có độ đàn hồi, độ giãn dài của màng phủ > 400%.',
              subtitleCT: 'Giá từ: 350,000 đ/m²',
            ),
            BangGia(
              titleCT: 'Phương án thi công chống thấm 9',
              contentCT:
                  'Chống thấm, dột mái tole , dùng vật liệu tạo màng ngăn nước - GỐC POLYURETHANE, grout Quicseal 201, vải polyester. Chịu đựng được sự khắc nghiệt của thời tiết.',
              subtitleCT: 'Giá từ: 70,000 đ/m²',
            ),
            BangGia(
              titleCT: 'Phương án thi công chống thấm 10',
              contentCT:
                  'Chống thấm tường , sàn, trần, senô, balcony bằng màng chống thấm 1 thành phần đồng nhất, gốc epoxy (Unipoxy, sporthane, mariseal 250, 300 chịu nhiệt từ -30 đến 90 độ c, độ giãn dài >800%, sản phẩm được khuyên dùng cho các hạng mục xây dựng dân dụng và công nghiệp.',
              subtitleCT: 'Giá từ: 370,000 đ/m²',
            ),
            ContentApp(
              titleCTA: 'Một số nguyên nhân khiến tường nhà bạn bị thấm:',
              textCTA: '– Tường nhà bị thấm do trời mưa nhiều, lượng nước ngấm vào tường lớn. Bản chất của xi măng hút nước mạnh và có những mao quản (khoảng cách giữa các hạt) có đường kính khoảng từ 20 – 40 micromet. Do đó, khi bề mặt tường tiếp xúc với nước, những khe hở mao quản sẽ bị nước xâm nhập vào bên trong gây ra hiện tượng thấm.\n' +
                  '– Do vị trí các ống thoát nước sàn giáp lai tường nhà, rãnh nước trên sàn mái… Nước và hơi ẩm từ những nơi này có thể theo các vết nứt, mao mạch rỗng của tường thấm sâu vào bên trong. Theo thời gian, tường nhà bị nước thấm vào tạo nên từng mảng loang lổ với lớp sơn xuống cấp.\n' +
                  '– Tường nhà xuống cấp do thời gian dài sử dụng, những vết nứt, bong tróc xuất hiện làm cho nước và hơi ẩm thấm sâu vào bên trong tường, đặc biệt khi vào mùa mưa tình trạng này lại diễn ra trầm trọng hơn.\n' +
                  '– Trong quá trình xây dựng, người thợ sử dụng cốt liệu bê tông không đúng quy chuẩn, hoặc không đủ vữa xi măng.\n' +
                  '– Nguyên nhân trực tiếp nhất vẫn là công trình không chủ động sử dụng những phương pháp ngăn thấm dột ngay từ những ngày đầu xây dựng.\n' +
                  'Ngoài ra còn có nhiều nguyên nhân khách quan khác có thể dẫn đến việc tường nhà bạn bị thấm. Việc cần thiết là xử lý triệt để căn nguyên của việc bị thấm.',
            ),
            ContentApp(
              titleCTA: 'Công ty TNHH Dịch Vụ Kỹ Thuật Thợ Việt',
              textCTA:
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
            titleTrang: 'Thợ Chống Thấm Tại TPHCM',
          ),
          titleSection
        ],
      ),
    );
  }
}

class DVChongTham extends StatelessWidget {
  DVChongTham({this.urlDVCT, this.titleDVCT, this.contentDVCT});
  final String urlDVCT;
  final String titleDVCT;
  final String contentDVCT;
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          Image.asset(
            urlDVCT,
            fit: BoxFit.cover,
            width: 400,
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
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
