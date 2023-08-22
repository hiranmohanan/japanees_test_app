import 'package:get/get.dart';

class HomescreenController extends GetxController {
  var tf1 = ''.obs;

  var indexi = 30.obs;
  var currentindex = 0.obs;

  void gettf1(String value) {
    tf1.value = value;
  }

  void getindex(int value) {
    currentindex.value = value;
  }
}
