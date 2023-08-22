import 'package:flutter/material.dart';
import 'package:weather_app_test/appimages/appimages.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          // /toolbarHeight: MediaQuery.of(context).size.height * 0.15,
          title: const Text(
            'スタンプカード詳細',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFFA8B1FF),
          leading: IconButton.filled(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(0),
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 30,
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            // alignment: Alignment.centerRight,
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xFF949EFF)),
              alignment: Alignment.centerRight,
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          )),
      backgroundColor: const Color(0xFFA8B1FF),
      body: ListView(
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Row(
                children: [
                  const Text(
                    'Mer キッチン',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Expanded(child: SizedBox()),
                  RichText(
                      text: const TextSpan(
                    text: '現在の獲得数',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: '30',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: '個',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
              color: Colors.white,
            ),
            child: ListView(
              padding: const EdgeInsets.only(top: 20),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: [
                Center(
                  child: SizedBox(
                    height: 250,
                    // width: MediaQuery.of(context).size.width * 0.8,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: 2,
                        itemBuilder: (context, index) => Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 200,
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  margin: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage(kappimagestarbox),
                                  )),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        right:
                                            MediaQuery.of(context).size.width *
                                                0.15),
                                    child: const Text('2 / 2枚目')),
                              ],
                            )),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text('スタンプ獲得履歴'),
                ),
                ListView.builder(
                  itemBuilder: (context, index) {
                    return const ListTile(
                      isThreeLine: true,
                      titleTextStyle: TextStyle(color: Colors.grey),
                      title: Text('2021 / 11 / 18'),
                      subtitle: Text('スタンプを獲得しました。'),
                      trailing: Text('1 個'),
                    );
                  },
                  itemCount: 15,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
