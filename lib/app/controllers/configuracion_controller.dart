import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfiguracionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var textController = TextEditingController();
  late TabController tabController;
  int selectpage = 0;
  RxString pickAlineacion = "Vertical".obs;
  List<String> alineacion = ["Vertical","Horizontal"];
  RxString pickEncabezado = "Si".obs;
  List<String> encabezado = ["Si","No"];
  RxString pickTypeSheet = "Media".obs;
  List<String> typeSheet = ["Media","Grande"];
  
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController =
        TabController(length: 12, initialIndex: selectpage, vsync: this);
  }
}
