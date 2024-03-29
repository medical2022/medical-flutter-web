import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/controllers/historiaclinica_controller.dart';
import 'package:medicinesystem/app/data/auth/auth.dart';
import 'package:medicinesystem/app/data/models/ConsultaMedica_model.dart';
import 'package:medicinesystem/app/data/models/Diagnostico_model.dart';
import 'package:medicinesystem/app/data/models/Paciente._model.dart';
import 'package:medicinesystem/app/data/models/Receta_model.dart';
import 'package:medicinesystem/app/data/models/Recetas_model.dart';
import 'package:medicinesystem/app/data/services/ConsultaMedica_service.dart';
import 'package:medicinesystem/app/data/services/altapaciente_service.dart';
import 'package:medicinesystem/app/routes/app_pages.dart';

import 'package:uuid/uuid.dart';

class ConsultamedicaController extends GetxController
    with GetSingleTickerProviderStateMixin {
  ConsultaMedicaService consultaMedicaService = new ConsultaMedicaService();
  ConsultaMedica consultaMedica = new ConsultaMedica();
  AltapacienteService altapacienteService = new AltapacienteService();
  Auth auth = new Auth();
  late Future<List<ConsultaMedica>> consultasMedicas;
  Paciente paciente = new Paciente();
  late TabController tabController;
  int selectpage = 0;
  var recetas = <Recetas>[].obs;
  Rx<Receta> receta = Receta().obs;

  List<DataRow> buildDatarows(TextStyle text) {
    print("=========llenar tabla de recetas======");
    List<DataRow> rows = [];
    if (receta.value.recetas?.length != null && receta.value.recetas != null) {
      receta.value.recetas!.forEach((element) {
        rows.add(DataRow(cells: [
          DataCell(Text(
            "${element.medicamento}",
            style: text,
          )),
          DataCell(Text(
            "${element.dosis}",
            style: text,
          )),
          DataCell(Text(
            "${element.frecuencia}",
            style: text,
          )),
          DataCell(Text(
            "${element.duracion}",
            style: text,
          )),
          DataCell(Text(
            "${element.via}",
            style: text,
          )),
          DataCell(ElevatedButton(
              onPressed: () {
                removeElement(receta.value.recetas!, element);
                update();
              },
              child: Text("Eliminar"))),
        ]));
      });
    } else {
      receta.value.recetas = [];
    }
    print(receta.value.recetas);
    print("=========buildarrows======");
    return rows;
  }

  List<DataRow> buildDatarowsDiagnostico(TextStyle text) {
    List<DataRow> rows = [];
    print("llenanado tabla de diagnostico");
    diagnosticos.value.forEach((element) {
      rows.add(DataRow(cells: [
        DataCell(Text(
          "${element.clave}",
          style: text,
        )),
        DataCell(Text(
          "${element.diagnostico}",
          style: text,
        )),
        DataCell(ElevatedButton(
            onPressed: () {
              removeElement(diagnosticos.value, element);
            },
            child: Text("Eliminar"))),
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
    // recetas.value = resPaciente.get("paciente");
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

  var args = Get.arguments;
  @override
  void onInit() {
    // TODO: implement onInit
    setData();
    consultasMedicas = consultaMedicaService.getDataList(
        auth.currentUser()!.uid, "ConsultaMedica");
    super.onInit();
    tabController =
        TabController(length: 11, initialIndex: selectpage, vsync: this);
    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        saveConsultaMedica();
        listMedicamento.value = [];
        if(receta.value.recetas!.length > 0){
          consultaMedica.receta!.recetas!.forEach((element) {
          if (element.suggestion == true) {
            listMedicamento.value.add(element.medicamento!);
          }
          print(element);
        });
        }
        
      }
    });
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print("joel es cerrado");
  }

  //!TextEditing controllers
  List<String> listvia = [
    "Seleccionar",
    "Oral",
    "Intramuscular",
    "Intravenoso",
    "Nasal",
    "Rectal",
    "Oftálmico",
    "Tópica",
    "Inhalado",
    "Ótico",
    "Sublingual",
    "Subcutáneo"
  ];
  RxString pickvia = "Seleccionar".obs;
  //evolucion
  TextEditingController evolucionController = TextEditingController();

  //signos vitales

  TextEditingController pacienteController = TextEditingController();
  TextEditingController frecCardiacaController = TextEditingController();
  TextEditingController frecRespiratoriaController = TextEditingController();
  TextEditingController presionArterialController = TextEditingController();
  TextEditingController pesoController = TextEditingController();
  TextEditingController tallaController = TextEditingController();
  TextEditingController perimetroCranealController = TextEditingController();
  TextEditingController perimetroAbdominalController = TextEditingController();
  TextEditingController oximetriaPulsoController = TextEditingController();
  TextEditingController temperaturaController = TextEditingController();
  TextEditingController imcController = TextEditingController();

  //exploracion fisica
  TextEditingController craneoController = TextEditingController();
  TextEditingController toraxController = TextEditingController();
  TextEditingController oidoController = TextEditingController();
  TextEditingController abdomenController = TextEditingController();
  TextEditingController ojosController = TextEditingController();
  TextEditingController extremidadesController = TextEditingController();
  TextEditingController orofaringeController = TextEditingController();
  TextEditingController observacionesController = TextEditingController();
  TextEditingController narinasController = TextEditingController();
  TextEditingController cuelloController = TextEditingController();

  //exploracion neurológica
  TextEditingController nerviosCranealesController = TextEditingController();
  TextEditingController tonoMuscularController = TextEditingController();
  TextEditingController fuerzaController = TextEditingController();
  TextEditingController reflejosController = TextEditingController();
  TextEditingController sensibilidadController = TextEditingController();
  TextEditingController marchaController = TextEditingController();

  //estudios auxiliares
  TextEditingController estudiosAuxiliaresController = TextEditingController();

  //diagnostico
  TextEditingController diagnosticoController = TextEditingController();

  //analisis
  TextEditingController analisisController = TextEditingController();

  //pronostico
  TextEditingController paralavidaController = TextEditingController();
  TextEditingController paralafuncionController = TextEditingController();

  //receta
  TextEditingController medicamentoController = TextEditingController();
  TextEditingController dosisController = TextEditingController();
  TextEditingController frecuenciaController = TextEditingController();
  TextEditingController duracionController = TextEditingController();
  TextEditingController viaController = TextEditingController();
  TextEditingController recetaObservacionesController = TextEditingController();

  //interconsulta
  // TextEditingController medicoController = TextEditingController();
  // TextEditingController especialidadController = TextEditingController();
  // TextEditingController motivoController = TextEditingController();
  var listMedicamento = <String>[].obs;
  saveReceta() {
    Recetas re = new Recetas();
    re.medicamento = medicamentoController.text;
    print("=============");
    print(medicamentoController.text);
    re.dosis = dosisController.text;
    re.frecuencia = frecuenciaController.text;
    re.duracion = duracionController.text;
    re.via = pickvia.value;
    re.suggestion = false;
    print(re.toJson());
    print(receta.value.recetas);
    receta.value.recetas!.add(re);
    cleanReceta();
    update();
  }

  saveAltaMedicamento() async {
    Recetas re = new Recetas();
    re.medicamento = medicamentoController.text;
    print("=============");
    print(medicamentoController.text);
    re.dosis = dosisController.text;
    re.frecuencia = frecuenciaController.text;
    re.duracion = duracionController.text;
    re.via = pickvia.value;
    re.suggestion = true;
    receta..value.recetas!.add(re);
    cleanReceta();
    update();
  }

  removeElement(List lista, Object? objeto) {
    lista.remove(objeto);
  }

  selectAutocomplete(Object? option) {
    print(option.toString());
    receta.value.recetas!.forEach((element) {
      if (element.medicamento == option.toString()) {
        dosisController.text = element.dosis!;
        frecuenciaController.text = element.frecuencia!;
        duracionController.text = element.duracion!;
        pickvia.value = element.via!;
      }
    });
  }

  cleanReceta() {
    medicamentoController.text = "";
    dosisController.text = "";
    frecuenciaController.text = "";
    duracionController.text = "";
    pickvia.value = "Seleccionar";
  }

  buildSave() {
    Paciente pacien = new Paciente();
    var id = Uuid().v1();
    receta..value.observaciones = observacionesController.text;
        if(consultaMedica != null){
      consultaMedica.date_of_create = new DateTime.now().year.toString();
    }
    // receta.value.recetas = recetas.value;
    if (historyClinica.isFirst.value == true) {
      consultaMedica.idPaciente = historyClinica.select.value.id;
      consultaMedica.id = historyClinica.select.value.name;
    } else {
      consultaMedica.idPaciente = args["paciente"].id;
      consultaMedica.paciente = args["paciente"].name;
    }
    consultaMedica.id = id;

    consultaMedica.evolucion = evolucionController.text;

    consultaMedica.frecuenciaCardiaca = frecCardiacaController.text;
    consultaMedica.frecuenciaRespiratoria = frecRespiratoriaController.text;
    consultaMedica.presionArterial = presionArterialController.text;
    consultaMedica.peso = pesoController.text;
    consultaMedica.talla = tallaController.text;
    consultaMedica.perimetroCraneal = perimetroCranealController.text;
    consultaMedica.perimetroAbdominal = perimetroAbdominalController.text;
    consultaMedica.oximetriaPulso = oximetriaPulsoController.text;
    consultaMedica.temperatura = temperaturaController.text;
    consultaMedica.iMC = imcController.text;
    consultaMedica.craneo = craneoController.text;
    consultaMedica.torax = toraxController.text;
    consultaMedica.oido = oidoController.text;
    consultaMedica.abdomen = abdomenController.text;
    consultaMedica.ojos = ojosController.text;
    consultaMedica.extremidades = extremidadesController.text;
    consultaMedica.orofaringe = orofaringeController.text;
    consultaMedica.observaciones = observacionesController.text;
    consultaMedica.narinas = narinasController.text;
    consultaMedica.cuello = cuelloController.text;
    consultaMedica.nerviosCraneales = nerviosCranealesController.text;
    consultaMedica.tonoMuscular = tonoMuscularController.text;
    consultaMedica.fuerza = fuerzaController.text;
    consultaMedica.reflejosOsteotendinosos = reflejosController.text;
    consultaMedica.sensibilidadConservada = sensibilidadController.text;
    consultaMedica.marcha = marchaController.text;
    consultaMedica.estudiosAuxiliares = estudiosAuxiliaresController.text;
    consultaMedica.diagnostico = diagnosticos.value;
    consultaMedica.analisisPlan = analisisController.text;
    consultaMedica.paraLaVida = paralavidaController.text;
    consultaMedica.paraLaFuncion = paralafuncionController.text;
    print(receta.value.recetas);
    consultaMedica.receta?.recetas = receta.value.recetas;
    consultaMedica.receta = receta.value;
  }

  setData() async {
    var id = auth.currentUser()!.uid;
    var data = await consultaMedicaService.getData(
        id, "ConsultaMedica", args["paciente"].id);

    if (data == null) {
      
      evolucionController.text = "";
      pacienteController.text = "";
      frecCardiacaController.text = "";
      frecRespiratoriaController.text = "";
      presionArterialController.text = "";
      pesoController.text = "";
      tallaController.text = "";
      perimetroCranealController.text = "";
      perimetroAbdominalController.text = "";
      oximetriaPulsoController.text = "";
      temperaturaController.text = "";
      imcController.text = "";
      craneoController.text = "";
      toraxController.text = "";
      oidoController.text = "";
      abdomenController.text = "";
      ojosController.text = "";
      extremidadesController.text = "";
      orofaringeController.text = "";
      observacionesController.text = "";
      narinasController.text = "";
      cuelloController.text = "";
      nerviosCranealesController.text = "";
      tonoMuscularController.text = "";
      fuerzaController.text = "";
      reflejosController.text = "";
      sensibilidadController.text = "";
      marchaController.text = "";
      estudiosAuxiliaresController.text = "";
      diagnosticoController.text = "";
      analisisController.text = "";
      paralavidaController.text = "";
      paralafuncionController.text = "";
    } else {
      evolucionController.text = data.evolucion!;
      pacienteController.text = data.paciente!;
      frecCardiacaController.text = data.frecuenciaCardiaca!;
      frecRespiratoriaController.text = data.frecuenciaRespiratoria!;
      presionArterialController.text = data.presionArterial!;
      pesoController.text = data.peso!;
      tallaController.text = data.talla!;
      perimetroCranealController.text = data.perimetroCraneal!;
      perimetroAbdominalController.text = data.perimetroAbdominal!;
      oximetriaPulsoController.text = data.oximetriaPulso!;
      temperaturaController.text = data.temperatura!;
      imcController.text = data.iMC!;
      craneoController.text = data.craneo!;
      toraxController.text = data.torax!;
      oidoController.text = data.oido!;
      abdomenController.text = data.abdomen!;
      ojosController.text = data.ojos!;
      extremidadesController.text = data.extremidades!;
      orofaringeController.text = data.orofaringe!;
      observacionesController.text = data.observaciones!;
      narinasController.text = data.narinas!;
      cuelloController.text = data.cuello!;
      nerviosCranealesController.text = data.nerviosCraneales!;
      tonoMuscularController.text = data.tonoMuscular!;
      fuerzaController.text = data.fuerza!;
      reflejosController.text = data.reflejosOsteotendinosos!;
      sensibilidadController.text = data.sensibilidadConservada!;
      marchaController.text = data.marcha!;
      estudiosAuxiliaresController.text = data.estudiosAuxiliares!;

      analisisController.text = data.analisisPlan!;
      paralavidaController.text = data.paraLaVida!;
      paralafuncionController.text = data.paraLaFuncion!;
      // var a =
      //     Diagnostico.fromJson(data.get("diagnostico") as Map<String, dynamic>);
      print("==========daatos diagnostico==========");
      print(data.diagnostico);
      diagnosticos.value = data.diagnostico!;
      

      
      data.receta?.recetas!.forEach((element) {
        print(element);
      });
      print("==========datos recetas==========");
      receta.value.recetas = data.receta?.recetas;
      
      
      // var bb = data.get("diagnostico");
      // bb.forEach((value) {
      //   Diagnostico di = Diagnostico.fromJson(value as Map<String, dynamic>);
      //   diagnosticos.value.add(di);
      // });
      // print("sldkasldklakdsldklaskdlkldk");
      // print(diagnosticos.value);
      // var a =
      //     Diagnostico.fromJson(data.get("diagnostico") as Map<String, dynamic>);
      // print(a);
      // diagnosticos.value = Diagnostico.fromJson(
      //         jsonDecode(data.get("diagnostico")) as Map<String, dynamic>)
      //     .toList();

      // data.get("diagnostico").docs.map(
      //     (element) => {print("========================="), print(element)});
      // ConsultaMedica test =
      //     ConsultaMedica.fromJson(data.data() as Map<String, dynamic>);
      // print("ojojsdjasdjaskljdklasjdklasjkldjaskldjklasjkld");
      // print(test.receta);
      // receta = test.receta!;
      // print(data.get("receta"));
      // receta = Recetas.fromJson(
      //     jsonDecode(data.get("receta")) as Map<String, dynamic>) as Receta;
    }

    print("=================================");
    print(data);
  }

  final historyClinica = Get.put(HistoriaclinicaController());
  saveConsultaMedica() {
    var id = auth.currentUser()!.uid;
    buildSave();
    print(historyClinica.isFirst.value);
    if (historyClinica.isFirst.value == true) {
      consultaMedicaService.save(id, "ConsultaMedica",
          historyClinica.select.value.id.toString(), consultaMedica);
    } else {
      consultaMedicaService.save(
          id, "ConsultaMedica", args["paciente"].id, consultaMedica);
    }
  }

  //receta

  //diagnostico
  TextEditingController controllerDiagnostico = TextEditingController();
  var diagnosticos = <Diagnostico>[].obs;

  saveDiagnostico() {
    var id = Uuid().v1();
    Diagnostico diagnostico = new Diagnostico();
    diagnostico.diagnostico = controllerDiagnostico.text;
    diagnostico.clave = id;
    diagnostico.id = id;
    diagnosticos.add(diagnostico);
  }
}
