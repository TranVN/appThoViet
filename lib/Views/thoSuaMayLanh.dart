import 'package:flutter/material.dart';

class ThoSuaMayLanh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thợ Sửa Máy Lạnh'),
      ),
      body: ThoSuaMayLanhWiget(),
    );
  }
}

class ThoSuaMayLanhWiget extends StatefulWidget {
  static String routeName = 'views/ThoSuaMayLanh';
  @override
  _ThoSuaMayLanhWigetState createState() => _ThoSuaMayLanhWigetState();
}

class _ThoSuaMayLanhWigetState extends State<ThoSuaMayLanhWiget> {
  Widget titleSection = new Container(
    padding: const EdgeInsets.all(10),
    child: new Row(
      children: <Widget>[
        new Expanded(
            child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding: EdgeInsets.all(2.5)),
            new Text(
                "– Thợ sửa máy lạnh tại nhà – Dịch vụ sửa chữa điện lạnh giá rẻ Thợ Việt. Chuyên cung cấp các dịch vụ liên quan đến điện lạnh: vệ sinh máy lạnh, máy điều hòa, sửa máy lạnh máy điều hòa, sửa lò vi sóng, sửa máy rửa chén, máy lọc nước…"),
            new Text(
                "– Thi công lắp đặt, vệ sinh, xử lý sự cố xảy ra trên hệ thống VRV, VRF, hệ thống HVAC, hệ thống ống gió... của tòa nhà, nhà máy..."),
            new Text(
                "– Với đội ngũ chuyên nghiệp Thợ Việt sẽ đáp ứng mọi nhu cầu của Quý Khách."),
            new Text(
                "Để nhận được thông tin chi tiết về giá cũng như mọi thông tin liên quan Quý Khách vui lòng liên hệ hoặc để lại thông tin. Thợ Việt sẽ liên hệ lại sớm nhất để trao đổi với Quý Khách."),
            new Text(
              "Tham Khảo Bảng giá nhân công – vật tư điện lạnh.(Giá tham khảo)",
              textAlign: TextAlign.start,
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            new Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.network(
                    'https://thoviet.com.vn/wp-content/uploads/2019/02/suamaylanh.png',
                    width: 400,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                  ListTile(
                    title: const Text('Thay tụ chạy block máy nén máy 1-1,5hp',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      'Giá từ: 350.000đ',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black87, fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.network(
                    'https://thoviet.com.vn/wp-content/uploads/2018/11/Tho-sua-may-lanh.jpg',
                    width: 400,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                  ListTile(
                    title: const Text('Thay tụ chạy block máy nén máy 2-2,5hp',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      'Giá từ: 450.000đ - 550.000đ',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black87, fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.network(
                    'https://thoviet.com.vn/wp-content/uploads/2017/03/Tho-dien-lanh-sua-may-lanh_tho-viet-2-e1541128658283.jpg',
                    width: 400,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                  ListTile(
                    title: const Text('Thay cánh quạt dàn nóng',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      'Giá từ: 300.000đ',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black87, fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.asset(
                    'lib/images/mo-to-dan-lanh.jpg',
                    width: 400,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                  ListTile(
                    title: const Text('Thay quạt mô tơ dàn lạnh (AC)',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      'Giá từ: 500.000đ',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black87, fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
            new Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.asset(
                    'lib/images/Block-may-lanh.jpg',
                    width: 400,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                  ListTile(
                    title: const Text(
                        'Thay block máy lạnh cũ 1.0 hp - BH 06 tháng',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      'Giá từ: 1,8 triệu - 2,2 triệu (Tùy theo hãng)',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black87, fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
            new Text(
              'Nếu máy lạnh gặp những hư hỏng thường gặp sau:',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            new Text('+ Máy nén chạy và dừng liên tục do quá tải.' +
                '\n+ Máy chạy và ngưng liền.' +
                '\n+ Quạt dàn nóng, lạnh không chạy.' +
                '\n+ Máy nén không chạy hay chạy ồn.' +
                '\n+ Máy lạnh quá lạnh hoặc Máy lạnh không lạnh.' +
                '\n+ Ấp suất hút cao hoặc thấp.' +
                '\n+ Máy chạy liên tục nhưng không lạnh.' +
                '\n+ Hư block, lạnh xì gas do lắp đầu mới không đúng kỹ thuật.'),
            new Text(
              'Hãy liên hệ ngay dịch vụ sửa điện lạnh tại nhà của Thợ Việt!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            new GridView.count(
              padding: const EdgeInsets.all(5),
              crossAxisCount: 3,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://thoviet.com.vn/wp-content/uploads/2018/09/tho-sua-dien-lanh-tai-nha-quan-9.jpg'),
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
                          'https://thoviet.com.vn/wp-content/uploads/2019/10/fix_thao-lap-may-lanh-tai-quan-2.jpg'),
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
                          'https://thoviet.com.vn/wp-content/uploads/2017/04/Tho-sua-may-lanh-tai-nha.jpg'),
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
              'Thợ Việt với quy trình sửa máy lạnh chuyên nghiệp:',
              textAlign: TextAlign.start,
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            new Text('+ Tiếp nhận thông tin khách hàng từ tổng đài\n' +
                '+ Phân công kỹ thuật viên tới kiểm tra máy lạnh\n' +
                '+ Chuẩn đoán nguyên nhân hư hỏng và báo giá sửa chữa\n' +
                '+ Tiến hành khắc phục hư hỏng nếu khách hàng đồng ý\n' +
                '+ Kiểm tra vận hành trước khi bàn giao máy lạnh cho khách hàng\n' +
                '+ Viết phiếu thanh toán và bảo trì\n'),
            new Text(
              'QUÝ KHÁCH VUI LÒNG LIÊN HỆ TRỰC TIẾP VĂN PHÒNG CÔNG TY QUA HOTLINE : 0903.532.938',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
        new Text(
          "Thợ Sửa Chữa Máy Lạnh",
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
