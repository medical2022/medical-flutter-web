import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/data/models/Paciente._model.dart';
import 'package:medicinesystem/app/data/services/altapaciente_service.dart';
import 'package:medicinesystem/app/data/services/api.dart';

import 'package:medicinesystem/app/routes/app_pages.dart';

class PacientesController extends GetxController {
  AltapacienteService altapacienteService = new AltapacienteService();
  
  Api api = new Api("paciente");
  late Stream<QuerySnapshot> fire ;
  late Future<List<Paciente>> pacientes;

  List<DataRow> buildDatarows(List<Paciente>? pacientes, TextStyle text) {
    List<DataRow> rows = [];
    pacientes!.forEach((element) {
      rows.add(DataRow(cells: [
        DataCell(GestureDetector(
            onTap: () {
              Get.offAndToNamed(Routes.PACIENTES + Routes.ALTAPACIENTE + "/${element.name}",
                  arguments: {"opcion": 3, "paciente": element},parameters: {"paciente":element.name!});
            },
            child: Text(
                "${element.name} ${element.apellidomaterno} ${element.apellidopaterno}",
                style: text))),
        DataCell(Text(
          "${element.number}",
          style: text,
        )),
        DataCell(Text("${element.phone}", style: text)),
        DataCell(Text("${element.street}", style: text)),
        DataCell(ElevatedButton(onPressed: () {}, child: Text("Editar"))),
      ]));
    });
    return rows;
  }

  @override
  void onReady() {
    super.onReady();
    print("joel es sssss");
  }

  @override
  void onInit() async {
    pacientes = altapacienteService.getPacientes();
    // fire =
    //    api.streamDataCollection();
    print("joel");
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print("cerrando");
  }
}
