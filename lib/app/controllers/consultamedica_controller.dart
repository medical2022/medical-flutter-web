import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
    List<DataRow> rows = [];

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
    return rows;
  }

  List<DataRow> buildDatarowsDiagnostico(TextStyle text) {
    List<DataRow> rows = [];

    diagnosticos.forEach((element) {
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
              removeElement(diagnosticos, element);
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
        consultaMedica.receta!.recetas!.forEach((element) {
          if (element.suggestion == true) {
            listMedicamento.value.add(element.medicamento!);
          }
          print(element);
        });
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
    var id = Uuid().v1();
    receta..value.observaciones = observacionesController.text;
    // receta.value.recetas = recetas.value;
    consultaMedica.id = id;
    consultaMedica.idPaciente = args["paciente"].id;
    consultaMedica.evolucion = evolucionController.text;
    consultaMedica.paciente = args["paciente"].name;
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

    consultaMedica.receta = receta.value;
  }

  setData() async {
    var id = auth.currentUser()!.uid;
    var data = await consultaMedicaService.getData(
        id, "ConsultaMedica", args["paciente"].id);

    if (data.data() == null) {
      consultaMedica.date_of_create = new DateTime.now().year.toString();
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
      evolucionController.text = data.get("evolucion");
      pacienteController.text = data.get("paciente");
      frecCardiacaController.text = data.get("frecuenciaCardiaca");
      frecRespiratoriaController.text = data.get("frecuenciaRespiratoria");
      presionArterialController.text = data.get("presionArterial");
      pesoController.text = data.get("peso");
      tallaController.text = data.get("talla");
      perimetroCranealController.text = data.get("perimetroCraneal");
      perimetroAbdominalController.text = data.get("perimetroAbdominal");
      oximetriaPulsoController.text = data.get("oximetriaPulso");
      temperaturaController.text = data.get("temperatura");
      imcController.text = data.get("IMC");
      craneoController.text = data.get("craneo");
      toraxController.text = data.get("torax");
      oidoController.text = data.get("oido");
      abdomenController.text = data.get("abdomen");
      ojosController.text = data.get("ojos");
      extremidadesController.text = data.get("extremidades");
      orofaringeController.text = data.get("orofaringe");
      observacionesController.text = data.get("observaciones");
      narinasController.text = data.get("narinas");
      cuelloController.text = data.get("cuello");
      nerviosCranealesController.text = data.get("nerviosCraneales");
      tonoMuscularController.text = data.get("tonoMuscular");
      fuerzaController.text = data.get("fuerza");
      reflejosController.text = data.get("reflejosOsteotendinosos");
      sensibilidadController.text = data.get("sensibilidadConservada");
      marchaController.text = data.get("marcha");
      estudiosAuxiliaresController.text = data.get("estudiosAuxiliares");

      analisisController.text = data.get("analisisPlan");
      paralavidaController.text = data.get("paraLaVida");
      paralafuncionController.text = data.get("paraLaFuncion");
      // var a =
      //     Diagnostico.fromJson(data.get("diagnostico") as Map<String, dynamic>);
      ;
      List<Diagnostico> dia = List<Diagnostico>.from(
          data.get("diagnostico").map((i) => Diagnostico.fromJson(i)));
      // List<Diagnostico> sd = data.get("diagnostico").cast<Diagnostico>();
      print(dia);
      print(dia[0].diagnostico);
      diagnosticos.value = dia;

      Receta re = Receta.fromJson(data.get("receta"));
      receta.value = re;
      print(receta.value);
      print("==========Sasasas==========");
      print(re);
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
    print(data.data());
  }

  saveConsultaMedica() {
    var id = auth.currentUser()!.uid;
    buildSave();
    consultaMedicaService.save(
        id, "ConsultaMedica", args["paciente"].id, consultaMedica);
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
