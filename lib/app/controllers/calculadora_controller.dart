

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculadoraController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  int selectpage = 0;
  Rx<String> weeks = "".obs;
  Rx<String> dateProbable = "".obs;
  DateTime? diaUltimoPeriodo;
  Rx<String> dateFertilidad = "".obs;
  Rx<String> imc = "".obs;

  //variables escalas menor edad
  RxBool isUnderWeight = true.obs;
  RxBool isNormalWeight = true.obs;
  RxBool isOverWeight = true.obs;
  RxBool isObesity = true.obs;
  RxBool isObesity2 = true.obs;
  

  //variables escalar mayor edad
  RxBool kisUnderWeight = true.obs;
  RxBool kisNormalWeight = true.obs;
  RxBool kisOverWeight = true.obs;
  RxBool kisObesity = true.obs;
  RxBool kisObesity2 = true.obs;
  RxBool kisObesity3 = true.obs;

  var selectGender = Rxn<String>();
  final tfDurationCicloMenstrual = TextEditingController();
  final tfPeso = TextEditingController();
  final tfEstatura = TextEditingController();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController =
        TabController(length: 6, initialIndex: selectpage, vsync: this);
  }
}
