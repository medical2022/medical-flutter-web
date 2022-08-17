import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/data/auth/auth.dart';
import 'package:medicinesystem/app/data/models/Paciente._model.dart';
import 'package:medicinesystem/app/data/services/altapaciente_service.dart';
import 'package:medicinesystem/app/data/services/api.dart';

import 'package:medicinesystem/app/routes/app_pages.dart';

class PacientesController extends GetxController {
  AltapacienteService altapacienteService = new AltapacienteService();

  Api api = new Api("paciente");
  Auth auth = new Auth();

   List<Paciente> pacientes = [];
  late Future<List<Paciente>> pacientess;
  TextEditingController controllerSearch = TextEditingController();
  RxString textSearch = "".obs;
  var pacientese = <Paciente>[].obs;
  var pacienteseFilter = <Paciente>[].obs;
  List<DataRow> buildDatarows(TextStyle text) {
    List<DataRow> rows = [];
    pacientese.forEach((element) {
      rows.add(DataRow(cells: [
        DataCell(GestureDetector(
            onTap: () {
              Get.offAndToNamed(
                  Routes.PACIENTES + Routes.ALTAPACIENTE + "/${element.name}",
                  arguments: {"opcion": 3, "paciente": element},
                  parameters: {"paciente": element.name!});
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

    print(auth.currentUser()!.email);
  }

  @override
  void onInit() async {
    var id = auth.currentUser()!.uid;
    pacientese.value = await altapacienteService.getData(id, "pacientes");
    pacienteseFilter.value = pacientese.value;
    getPaci();

    print(pacientes);
    // fire =
    //    api.streamDataCollection();
    print("joel");
    super.onInit();
  }

  void getPaci() async {
    var id = auth.currentUser()!.uid;
    pacientes = await altapacienteService.getData(id, "pacientes");
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print("cerrando");
  }

  searchPacientes(String query) async {
    final input = query.toLowerCase();
    final suggestions = pacientese.where((p) {
      return p.name!.toLowerCase().contains(input);
    }).toList();
    if (input.isEmpty) {
      pacientese.value = pacienteseFilter.value;
      print("joel");
    } else {
      pacientese.value = suggestions;
    }
  }
}
