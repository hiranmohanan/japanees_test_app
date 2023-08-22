import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app_test/appimages/appimages.dart';
import 'package:weather_app_test/controllers/screen3_controller.dart';

class Screen3 extends StatelessWidget {
  Screen3({super.key});
  final Screen3Controller _controller = Screen3Controller();

  @override
  Widget build(BuildContext context) {
    const TextStyle fieldhead = TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    );
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: const Text('店舗プロフィール編集'),
          centerTitle: true,
          actions: [
            IconButton.filled(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {},
                icon: const Icon(Icons.notification_add))
          ],
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
            // alignment: Alignment.centerRight,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              alignment: Alignment.centerRight,
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          )),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          RichText(
              text: const TextSpan(
            text: '店舗名',
            style: fieldhead,
            children: [
              TextSpan(
                text: '*',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          )),
          const SizedBox(height: 10),
          Obx(() => TextFormField(
                onChanged: (value) {
                  _controller.gettf1(value);
                },
                initialValue: _controller.tf1.value,
                decoration: InputDecoration(
                  hintText: 'Mer キッチン',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    gapPadding: 5,
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                  ),
                ),
              )),
          const SizedBox(height: 10),
          RichText(
              text: const TextSpan(
            text: '代表担当者名',
            style: fieldhead,
            children: [
              TextSpan(
                text: '*',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          )),
          const SizedBox(height: 10),
          Obx(() => TextFormField(
                onChanged: (value) {
                  _controller.gettf2(value);
                },
                initialValue: _controller.tf2.value,
                decoration: InputDecoration(
                  hintText: '林田　絵梨花',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    gapPadding: 5,
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                  ),
                ),
              )),
          const SizedBox(height: 10),
          RichText(
              text: const TextSpan(
            text: '店舗電話番号',
            style: fieldhead,
            children: [
              TextSpan(
                text: '*',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          )),
          const SizedBox(height: 10),
          Obx(() => TextFormField(
                onChanged: (value) {
                  _controller.gettf3(value);
                },
                initialValue: _controller.tf3.value,
                decoration: InputDecoration(
                  hintText: '123 - 4567 8910',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    gapPadding: 5,
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                  ),
                ),
              )),
          const SizedBox(height: 10),
          RichText(
              text: const TextSpan(
            text: '店舗住所',
            style: fieldhead,
            children: [
              TextSpan(
                text: '*',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          )),
          const SizedBox(height: 10),
          Obx(() => TextFormField(
                onChanged: (value) {
                  _controller.gettf4(value);
                },
                initialValue: _controller.tf4.value,
                decoration: InputDecoration(
                  hintText: '大分県豊後高田市払田791-13',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    gapPadding: 5,
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                  ),
                ),
              )),

          // const SizedBox(height: 10),
          SizedBox(
              // height: 100,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(kappimagemap)),
          const SizedBox(height: 10),
          RichText(
              text: const TextSpan(
            text: '店舗外観',
            style: fieldhead,
            children: [
              TextSpan(
                text: '*',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              TextSpan(
                text: '（最大3枚まで）',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          )),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              imageset(),
              imageset(),
              SizedBox(
                  // height: 90,
                  // width: 90,
                  child: Image.asset(kappimagetempimage)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
              text: const TextSpan(
            text: '店舗内観',
            style: fieldhead,
            children: [
              TextSpan(
                text: '*',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              TextSpan(
                text: '（1枚〜3枚ずつ追加してください）',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          )),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              imageset(),
              imageset(),
              SizedBox(
                  // height: 90,
                  // width: 90,
                  child: Image.asset(kappimagetempimage)),
            ],
          ),
          const SizedBox(height: 10),
          RichText(
              text: const TextSpan(
            text: 'メニュー写真',
            style: fieldhead,
            children: [
              TextSpan(
                text: '*',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              TextSpan(
                text: '（1枚〜3枚ずつ追加してください）',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          )),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              imageset(),
              imageset(),
              SizedBox(
                  // height: 90,
                  // width: 90,
                  child: Image.asset(kappimagetempimage)),
            ],
          ),
          const SizedBox(height: 10),
          RichText(
              text: const TextSpan(
            text: '営業時間',
            style: fieldhead,
            children: [
              TextSpan(
                text: '*',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          )),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 100,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2),
                    ),
                  ),
                  value: '1',
                  items: [
                    const DropdownMenuItem(
                      value: '1',
                      child: Text('10 : 00'),
                    ),
                    const DropdownMenuItem(
                      value: '2',
                      child: Text('20 : 00'),
                    ),
                  ].toList(),
                  onChanged: (val) {},
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text('〜'),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 100,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2),
                    ),
                  ),
                  value: '2',
                  items: [
                    const DropdownMenuItem(
                      value: '1',
                      child: Text('10 : 00'),
                    ),
                    const DropdownMenuItem(
                      value: '2',
                      child: Text('20 : 00'),
                    ),
                  ].toList(),
                  onChanged: (val) {},
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          RichText(
              text: const TextSpan(
            text: 'ランチ時間',
            style: fieldhead,
            children: [
              TextSpan(
                text: '*',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          )),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 100,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2),
                    ),
                  ),
                  value: '1',
                  items: [
                    const DropdownMenuItem(
                      value: '1',
                      child: Text('10 : 00'),
                    ),
                    const DropdownMenuItem(
                      value: '2',
                      child: Text('20 : 00'),
                    ),
                  ].toList(),
                  onChanged: (val) {},
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text('〜'),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 100,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2),
                    ),
                  ),
                  value: '2',
                  items: [
                    const DropdownMenuItem(
                      value: '1',
                      child: Text('10 : 00'),
                    ),
                    const DropdownMenuItem(
                      value: '2',
                      child: Text('20 : 00'),
                    ),
                  ].toList(),
                  onChanged: (val) {},
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          RichText(
              text: const TextSpan(
            text: '定休日',
            style: fieldhead,
            children: [
              TextSpan(
                text: '*',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          )),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            children: [
              Obx(() => InputChip(
                    onPressed: () {
                      _controller.getboollf1(0, !_controller.lf1[0].value);
                    },
                    elevation: 0,
                    side: BorderSide.none,
                    avatar: Checkbox(
                        value: _controller.lf1[0].toString().contains('true'),
                        onChanged: (val) {}),
                    label: const Text('月'),
                  )),
              Obx(() => InputChip(
                    onPressed: () {
                      _controller.getboollf1(1, !_controller.lf1[1].value);
                    },
                    elevation: 0,
                    side: BorderSide.none,
                    avatar: Checkbox(
                        value: _controller.lf1[1].toString().contains('true'),
                        onChanged: (val) {}),
                    label: const Text('火'),
                  )),
              Obx(() => InputChip(
                    onPressed: () {
                      _controller.getboollf1(2, !_controller.lf1[2].value);
                    },
                    elevation: 0,
                    side: BorderSide.none,
                    avatar: Checkbox(
                        value: _controller.lf1[2].toString().contains('true'),
                        onChanged: (val) {}),
                    label: const Text('水'),
                  )),
              Obx(() => InputChip(
                    onPressed: () {
                      _controller.getboollf1(3, !_controller.lf1[3].value);
                    },
                    elevation: 0,
                    side: BorderSide.none,
                    avatar: Checkbox(
                        value: _controller.lf1[3].toString().contains('true'),
                        onChanged: (val) {}),
                    label: const Text('木'),
                  )),
              Obx(() => InputChip(
                    onPressed: () {
                      _controller.getboollf1(4, !_controller.lf1[4].value);
                    },
                    elevation: 0,
                    side: BorderSide.none,
                    avatar: Checkbox(
                        value: _controller.lf1[4].toString().contains('true'),
                        onChanged: (val) {}),
                    label: const Text('金'),
                  )),
              Obx(() => InputChip(
                    onPressed: () {
                      _controller.getboollf1(5, !_controller.lf1[5].value);
                    },
                    elevation: 0,
                    side: BorderSide.none,
                    avatar: Checkbox(
                        value: _controller.lf1[5].toString().contains('true'),
                        onChanged: (val) {}),
                    label: const Text('土'),
                  )),
              Obx(() => InputChip(
                    onPressed: () {
                      _controller.getboollf1(6, !_controller.lf1[6].value);
                    },
                    elevation: 0,
                    side: BorderSide.none,
                    avatar: Checkbox(
                        value: _controller.lf1[6].toString().contains('true'),
                        onChanged: (val) {}),
                    label: const Text('日'),
                  )),
              Obx(() => InputChip(
                    onPressed: () {
                      _controller.getboollf1(7, !_controller.lf1[7].value);
                    },
                    elevation: 0,
                    side: BorderSide.none,
                    avatar: Checkbox(
                        value: _controller.lf1[7].toString().contains('true'),
                        onChanged: (val) {}),
                    label: const Text('祝'),
                  )),
            ],
          ),
          const SizedBox(height: 10),
          RichText(
              text: const TextSpan(
            text: '料理カテゴリー',
            style: fieldhead,
            children: [
              TextSpan(
                text: '*',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          )),
          const SizedBox(height: 10),
          DropdownButtonFormField(
              items: const [
                DropdownMenuItem(
                  value: '1',
                  child: Text('美味しい！リーズナブルなオムライスランチ！'),
                ),
                DropdownMenuItem(
                  value: '2',
                  child: Text('洋食'),
                ),
              ],
              value: '1',
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.grey, width: 2),
                ),
              ),
              onChanged: (val) {}),

          const SizedBox(height: 10),
          RichText(
              text: const TextSpan(
            text: '座席数',
            style: fieldhead,
            children: [
              TextSpan(
                text: '*',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          )),
          const SizedBox(height: 10),
          Obx(() => TextFormField(
                onChanged: (value) {
                  _controller.gettf5(value);
                },
                initialValue: _controller.tf5.value,
                decoration: InputDecoration(
                  hintText: '40席',
                  contentPadding: const EdgeInsets.only(left: 5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                  ),
                ),
              )),

          const SizedBox(height: 10),
          RichText(
              text: const TextSpan(
            text: '喫煙席',
            style: fieldhead,
            children: [
              TextSpan(
                text: '*',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          )),
          const SizedBox(height: 10),
          Wrap(
            children: [
              Obx(() => InputChip(
                    onPressed: () {
                      _controller.getboollf2(0, !_controller.lf2[0].value);
                    },
                    elevation: 0,
                    side: BorderSide.none,
                    avatar: Checkbox(
                        value: _controller.lf2[0].toString().contains('true'),
                        onChanged: (val) {}),
                    label: const Text('有'),
                  )),
              Obx(() => InputChip(
                    onPressed: () {
                      _controller.getboollf2(1, !_controller.lf2[1].value);
                    },
                    elevation: 0,
                    side: BorderSide.none,
                    avatar: Checkbox(
                        value: _controller.lf2[1].toString().contains('true'),
                        onChanged: (val) {}),
                    label: const Text('無'),
                  )),
            ],
          ),
          const SizedBox(height: 10),
          RichText(
              text: const TextSpan(
            text: '駐車場',
            style: fieldhead,
            children: [
              TextSpan(
                text: '*',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          )),
          const SizedBox(height: 10),
          Wrap(
            children: [
              Obx(() => InputChip(
                    onPressed: () {
                      _controller.getboollf3(0, !_controller.lf3[0].value);
                    },
                    elevation: 0,
                    side: BorderSide.none,
                    avatar: Checkbox(
                        value: _controller.lf3[0].toString().contains('true'),
                        onChanged: (val) {}),
                    label: const Text('有'),
                  )),
              Obx(() => InputChip(
                    onPressed: () {
                      _controller.getboollf3(1, !_controller.lf3[1].value);
                    },
                    elevation: 0,
                    side: BorderSide.none,
                    avatar: Checkbox(
                        value: _controller.lf3[1].toString().contains('true'),
                        onChanged: (val) {}),
                    label: const Text('無'),
                  )),
            ],
          ),
          const SizedBox(height: 10),
          RichText(
              text: const TextSpan(
            text: '来店プレゼント',
            style: fieldhead,
            children: [
              TextSpan(
                text: '*',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          )),
          const SizedBox(height: 10),
          Obx(() => Wrap(
                children: [
                  InputChip(
                    onPressed: () {
                      _controller.getboollf4(0, !_controller.lf4[0].value);
                    },
                    elevation: 0,
                    side: BorderSide.none,
                    avatar: Checkbox(
                        value: _controller.lf4[0].toString().contains('true'),
                        onChanged: (val) {}),
                    label: const Text('有（最大３枚まで）'),
                  ),
                  InputChip(
                    onPressed: () {
                      _controller.getboollf4(1, !_controller.lf4[1].value);
                    },
                    elevation: 0,
                    side: BorderSide.none,
                    avatar: Checkbox(
                        value: _controller.lf4[1].toString().contains('true'),
                        onChanged: (val) {}),
                    label: const Text('無'),
                  ),
                ],
              )),
          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              imageset(),
              imageset(),
              SizedBox(
                  // height: 90,
                  // width: 90,
                  child: Image.asset(kappimagetempimage)),
            ],
          ),
          const SizedBox(height: 10),
          RichText(
              text: const TextSpan(
            text: '来店プレゼント名',
            style: fieldhead,
            children: [
              TextSpan(
                text: '*',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          )),
          const SizedBox(height: 10),
          Obx(() => TextFormField(
                onChanged: (value) {
                  _controller.gettf6(value);
                },
                initialValue: _controller.tf6.value,
                decoration: InputDecoration(
                  hintText: 'いちごクリームアイスクリーム, ジュース',
                  contentPadding: const EdgeInsets.only(left: 5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                  ),
                ),
              )),
          const SizedBox(height: 10),

          Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  gradient: LinearGradient(
                      colors: [Color(0xFFEE7D42), Color(0xFFFFC8AB)])),
              child: MaterialButton(
                onPressed: () {},
                child: const Text(
                  '編集を保存',
                  style: TextStyle(color: Colors.white),
                ),
              ))
        ],
      ),
    );
  }

  Stack imageset({double? height, double? width, String? img}) {
    return Stack(
      children: [
        SizedBox(
            // height: height ?? 100,
            // width: width ?? 100,
            child: Image.asset(
          img ?? kappimagestoreimage,
          fit: BoxFit.cover,
        )),
        const Positioned(
          top: 6,
          right: 18,
          // bottom: 2,
          child: ImageIcon(
            AssetImage(kappimageiconcancel),
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
