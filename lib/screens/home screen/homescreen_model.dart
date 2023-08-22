import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../appfonts/appfonts.dart';
import '../../appimages/appimages.dart';
import '../../controllers/homescreen_controller.dart';

class HomeScreenHBoxModel {
  String title;
  String image;
  String pay;
  String d2;
  String d3;
  String d4;
  String d5;
  String d6;

  HomeScreenHBoxModel(
      {required this.title,
      required this.image,
      required this.pay,
      required this.d2,
      required this.d3,
      required this.d4,
      required this.d5,
      required this.d6});
}

class DateRow extends StatelessWidget {
  DateRow({super.key});

  final HomescreenController _controller = HomescreenController();

  final DateTime _today = DateTime.now();

  final int indexi = 30;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Obx(() => Row(
            children: List.generate(
              30,
              (index) {
                final date = _today.add(Duration(days: index));
                final Weekday = DateFormat.E().format(date).toString();
                final japaneseWeekday = dateconverttojap(Weekday);
                // final japaneseWeekdays = date.;

                return GestureDetector(
                  onTap: () {
                    _controller.getindex(index);
                  },
                  child: Container(
                    width: 50,
                    decoration: BoxDecoration(
                      color: index == _controller.currentindex.value
                          ? const Color(0xFFFAAA14)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(japaneseWeekday), // Display the Japanese weekday
                          Text(date.day
                              .toString()), // Display the day of the month
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )),
    );
  }
}

dateconverttojap(String val) {
  if (val == 'Mon') {
    return '月';
  }
  if (val == 'Tue') {
    return '火';
  }
  if (val == 'Wed') {
    return '水';
  }
  if (val == 'Thu') {
    return '木';
  }
  if (val == 'Fri') {
    return '金';
  }
  if (val == 'Sat') {
    return '土';
  }
  if (val == 'Sun') {
    return '日';
  }
  return '月';
}

class HomeScreenModel {
  List<HomeScreenHBoxModel> homeboxdata = [
    HomeScreenHBoxModel(
        title: kappstringsbox1title,
        image: kappimage1,
        pay: kappstringsbox1pay,
        d2: kappstringsbox1d2,
        d3: kappstringsbox1d3,
        d4: kappstringsbox1d4,
        d5: kappstringsbox1d5,
        d6: kappstringsbox1d6),
    HomeScreenHBoxModel(
        title: kappstringsbox1title,
        image: kappimage1,
        pay: kappstringsbox1pay,
        d2: kappstringsbox1d2,
        d3: kappstringsbox1d3,
        d4: kappstringsbox1d4,
        d5: kappstringsbox1d5,
        d6: kappstringsbox1d6),
    HomeScreenHBoxModel(
        title: kappstringsbox1title,
        image: kappimage1,
        pay: kappstringsbox1pay,
        d2: kappstringsbox1d2,
        d3: kappstringsbox1d3,
        d4: kappstringsbox1d4,
        d5: kappstringsbox1d5,
        d6: kappstringsbox1d6),
    HomeScreenHBoxModel(
        title: kappstringsbox1title,
        image: kappimage1,
        pay: kappstringsbox1pay,
        d2: kappstringsbox1d2,
        d3: kappstringsbox1d3,
        d4: kappstringsbox1d4,
        d5: kappstringsbox1d5,
        d6: kappstringsbox1d6),
    HomeScreenHBoxModel(
        title: kappstringsbox1title,
        image: kappimage1,
        pay: kappstringsbox1pay,
        d2: kappstringsbox1d2,
        d3: kappstringsbox1d3,
        d4: kappstringsbox1d4,
        d5: kappstringsbox1d5,
        d6: kappstringsbox1d6),
  ];
}
