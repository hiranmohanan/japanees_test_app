import 'package:flutter/material.dart';
import 'package:weather_app_test/appimages/appimages.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

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
          TextFormField(
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
          ),
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
          TextFormField(
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
          ),
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
          TextFormField(
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
          ),
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
          TextFormField(
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
          ),

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