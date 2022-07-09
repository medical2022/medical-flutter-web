import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConsultamedicaController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  int selectpage = 0;

  var args = Get.arguments;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController =
        TabController(length: 11, initialIndex: selectpage, vsync: this);
  }
}
