import 'package:get/get.dart';

class Screen3Controller extends GetxController {
  var tf1 = ''.obs;
  var tf2 = ''.obs;
  var tf3 = ''.obs;
  var tf4 = ''.obs;
  var tf5 = ''.obs;
  var tf6 = ''.obs;
  List lf1 = [
    false.obs,
    false.obs,
    false.obs,
    false.obs,
    false.obs,
    true.obs,
    true.obs,
    true.obs,
  ];
  List lf2 = [true.obs, false.obs];
  List lf3 = [true.obs, false.obs];
  List lf4 = [true.obs, false.obs];

  void gettf1(String value) {
    tf1.value = value;
  }

  void gettf2(String value) {
    tf2.value = value;
  }

  void gettf3(String value) {
    tf3.value = value;
  }

  void gettf4(String value) {
    tf4.value = value;
  }

  void gettf5(String value) {
    tf5.value = value;
  }

  void gettf6(String value) {
    tf6.value = value;
  }

  void getboollf1(int index, bool value) {
    lf1[index].value = value;
  }

  void getboollf2(int index, bool value) {
    lf2[index].value = value;
  }

  void getboollf3(int index, bool value) {
    lf3[index].value = value;
  }

  void getboollf4(int index, bool value) {
    lf4[index].value = value;
  }
}
