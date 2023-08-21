import 'package:flutter/material.dart';
import 'package:weather_app_test/appimages/appimages.dart';
import 'package:weather_app_test/screens/home%20screen/homescreen_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeScreenModel home = HomeScreenModel();
    return Scaffold(
        appBar: AppBar(
          title: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const SizedBox(
              height: 40,
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      hintText: '北海道, 札幌市',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 0,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )
                      // prefixIcon: Icon(Icons.search),
                      ),
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(kappimageiconsettings),
            ),
            IconButton(
                onPressed: () {}, icon: Image.asset(kappimageiconheartred)),
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.yellowAccent,
                gradient: LinearGradient(colors: [
                  Color(0xFFFFD78D),
                  Color(0xFFFAAA14),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              padding: const EdgeInsets.all(10),
              child: const Center(
                child: Text('2022年 5月 26日（木）'),
              ),
            ),
            DateRow(),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            image: DecorationImage(
                              image: AssetImage(kappimage1),
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: 200,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                home.homeboxdata[index].title,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                        margin: const EdgeInsets.all(10),
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFFDF7EC),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            home.homeboxdata[index].d2,
                                            style: const TextStyle(
                                                color: Color(0xFFFAAA14)),
                                          ),
                                        )),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Expanded(
                                      //  / flex: 1,
                                      child: Text(home.homeboxdata[index].pay)),
                                ],
                              ),
                              Text(home.homeboxdata[index].d3),
                              Text(home.homeboxdata[index].d4),
                              Text(home.homeboxdata[index].d5),
                              Row(children: [
                                Expanded(
                                    flex: 5,
                                    child: Text(
                                      home.homeboxdata[index].d6,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    )),
                                Expanded(
                                    child: Image.asset(kappimageiconheartlight))
                              ]),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: home.homeboxdata.length),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, '/screen2');
            },
            backgroundColor: Colors.transparent,
            elevation: 0,
            isExtended: true,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              height: 50,
              width: 50,
              child: const Icon(
                Icons.location_on_outlined,
                size: 30,
              ),
            )),
        bottomNavigationBar: Stack(
          children: [
            BottomNavigationBar(
              showSelectedLabels: true,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              currentIndex: 0,
              selectedIconTheme: const IconThemeData(
                color: Color(0xFFFAAA14),
              ),
              unselectedIconTheme: const IconThemeData(
                color: Colors.grey,
              ),
              iconSize: 30,
              selectedLabelStyle: const TextStyle(
                color: Color(0xFFFAAA14),
              ),
              unselectedLabelStyle: const TextStyle(
                color: Colors.grey,
              ),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(kappimageiconbox1)),
                  label: 'Screen 1',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(kappimageiconheartscan),
                    color: Colors.red,
                  ),
                  label: 'Screen 1',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(kappimageiconmessage)),
                  label: 'Screen 2',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(kappimageiconperson)),
                  label: 'Screen 3',
                ),
              ],
              onTap: (value) {
                if (value == 1) {
                  Navigator.pushNamed(context, '/screen2');
                }
                if (value == 3) {
                  Navigator.pushNamed(context, '/screen3');
                }
              },
            ),
            Positioned(
              top: 1,
              bottom: 1,
              left: MediaQuery.of(context).size.width * 0.5 - 25,
              child: IconButton(
                  onPressed: () {}, icon: Image.asset(kappimageiconheartscan)),
            ),
          ],
        ));
  }
}
