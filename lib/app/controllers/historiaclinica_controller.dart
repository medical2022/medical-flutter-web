import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/data/models/Paciente._model.dart';
import 'package:medicinesystem/app/data/services/altapaciente_service.dart';
import 'package:medicinesystem/app/data/services/api.dart';

class HistoriaclinicaController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
   RxString select = "cvcvcv".obs;
  int selectpage = 0;
  AltapacienteService altapacienteService = new AltapacienteService();

  List<Paciente> pacientes = List<Paciente>.empty().obs;
  Rx<RxList<Paciente>> pacien = RxList<Paciente>.empty().obs;
  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    print(pacientes);
    tabController =
        TabController(length: 6, initialIndex: selectpage, vsync: this);
    pacien.value.value = await altapacienteService.getPacientes();
    print(pacien.value.value);
    // pacientes.forEach((element) {
    //   print(element.name);
    // });
  }
}
