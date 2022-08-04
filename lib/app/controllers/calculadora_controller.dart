import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculadoraController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  int selectpage = 0;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController =
        TabController(length: 6, initialIndex: selectpage, vsync: this);
  }
}
