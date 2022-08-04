import 'package:get/get.dart';
import 'package:medicinesystem/app/data/auth/auth.dart';
import 'package:medicinesystem/app/data/models/ConsultaMedica_model.dart';
import 'package:medicinesystem/app/data/models/Paciente._model.dart';
import 'package:flutter/material.dart';
import 'package:medicinesystem/app/data/services/ConsultaMedica_service.dart';
import 'package:medicinesystem/app/data/services/altapaciente_service.dart';
import 'package:medicinesystem/app/routes/app_pages.dart';

class ConsultaController extends GetxController {
  Auth auth = new Auth();
  late Future<List<ConsultaMedica>> consultasMedicas;
  AltapacienteService altapacienteService = new AltapacienteService();
  Paciente paciente = new Paciente();
  ConsultaMedicaService consultaMedicaService = new ConsultaMedicaService();
  var consultaMedicasFilter = <ConsultaMedica>[].obs;
  var consultaMedicas = <ConsultaMedica>[].obs;

  // List<DataRow> buildDatarowsRecetas(TextStyle text) {
  //   List<DataRow> rows = [];
  //   consultaMedicas.value[0].receta!.recetas![0].dosis;
  //   consultaMedicas.forEach((element) {
  //     rows.add(DataRow(cells: [
  //       DataCell(Text(
  //         "${element.receta.recetas}",
  //         style: text,
  //       )),
  //       DataCell(Text(
  //         "${element.dosis}",
  //         style: text,
  //       )),
  //       DataCell(Text(
  //         "${element.frecuencia}",
  //         style: text,
  //       )),
  //       DataCell(Text(
  //         "${element.duracion}",
  //         style: text,
  //       )),
  //       DataCell(Text(
  //         "${element.via}",
  //         style: text,
  //       )),
  //     ]));
  //   });
  //   return rows;
  // }

  List<DataRow> buildDatarows(TextStyle text) {
    List<DataRow> rows = [];
    consultaMedicas.forEach((element) {
      rows.add(DataRow(cells: [
        DataCell(
            GestureDetector(child: Text("${element.paciente} ", style: text))),
        DataCell(Text(
          "${element.evolucion}",
          style: text,
        )),
        DataCell(Text("${element.date_of_create}", style: text)),
        DataCell(ElevatedButton(
            onPressed: () {
              getPaciente(element.idPaciente);
              Future.delayed(Duration(seconds: 3), () {
                Get.toNamed(Routes.CONSULTA + Routes.CONSULTAMEDICA,
                    arguments: {"paciente": paciente});
              });
            },
            child: Text("Editar"))),
      ]));
    });
    return rows;
  }

  getPaciente(String? id) async {
    print(id);
    print(")================================");
    var resPaciente = await altapacienteService.getDataById(
        auth.currentUser()!.uid, "pacientes", id!);
    print("====================");
    print(resPaciente.get("name"));
    paciente.name = resPaciente.get("name");
    paciente.apellidomaterno = resPaciente.get("apellidomaterno");
    paciente.apellidopaterno = resPaciente.get("apellidopaterno");
    paciente.education = resPaciente.get("education");
    paciente.active = resPaciente.get("active");
    paciente.city = resPaciente.get("city");
    paciente.country = resPaciente.get("country");
    paciente.companion = resPaciente.get("companion");
    paciente.date = resPaciente.get("date");
    paciente.email = resPaciente.get("email");
    paciente.gender = resPaciente.get("gender");
    paciente.doctorconsult = resPaciente.get("doctorconsult");
    paciente.zone = resPaciente.get("zone");
    paciente.street = resPaciente.get("street");
    paciente.statuscivil = resPaciente.get("statuscivil");
    paciente.state = resPaciente.get("state");
    paciente.relationship = resPaciente.get("relationship");
    paciente.recommendedpor = resPaciente.get("recommendedpor");
    paciente.photo = resPaciente.get("photo");
    paciente.number = resPaciente.get("number");
    paciente.phone = resPaciente.get("phone");
    paciente.fraccionamiento = resPaciente.get("fraccionamiento");
    paciente.id = resPaciente.get("id");
  }

  @override
  void onInit() async {
    // TODO: implement onInit
    print("===================================");
    var valor = await consultaMedicaService.getDataList(
        auth.currentUser()!.uid, "ConsultaMedica");
    print(valor);
    consultaMedicas.value = await consultaMedicaService.getDataList(
        auth.currentUser()!.uid, "ConsultaMedica");
    consultaMedicasFilter.value = consultaMedicas.value;
    print("===================================");
    print(consultaMedicas.value);
    super.onInit();
  }

  searchConsultaMedica(String query) async {
    final input = query.toLowerCase();
    final suggestions = consultaMedicas.where((p) {
      return p.paciente!.toLowerCase().contains(input);
    }).toList();
    if (input.isEmpty) {
      consultaMedicas.value = consultaMedicasFilter.value;
      print("joel");
    } else {
      consultaMedicas.value = suggestions;
    }
  }
}
