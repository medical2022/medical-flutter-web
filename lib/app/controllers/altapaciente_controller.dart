import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/data/models/Paciente._model.dart';
import 'package:medicinesystem/app/data/services/altapaciente_service.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:medicinesystem/app/routes/app_pages.dart';
import 'package:uuid/uuid.dart';
import 'package:get/get.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class AltapacientController extends GetxController {
  late Paciente pacien;
  late bool isDetails = false;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    final args = Get.arguments;
    if (args["opcion"] == 3) {
      print(args);
      pacien = args['paciente'];

      print(args["paciente"]);
      if (pacien != null) {
        buildIsDetails(pacien);
        isDetails = true;
      }
    }
  }

  AltapacienteService service = new AltapacienteService();
  List<String> listzona = ["Norte", "Sur", "Este", "Oeste", "Centro"];
  RxString pickzona = "Norte".obs;
  List<String> listestado = ["Estado"];
  RxString pickestado = "Estado".obs;
  List<String> listescolaridad = [
    "Preescolar",
    "Primaria incompleta",
    "Primaria completa",
    "Secundaria incompleta",
    "Secundaria completa",
    "Bachillerato incompleta",
    "Bachillerato completa",
    "Estudios tecnicos",
    "Licenciatura incompleta",
    "Licenciatura completa",
    "Posgrado",
    "Post-primaria"
  ];
  RxString pickescolaridad = "Preescolar".obs;
  List<String> listestadocivil = ["Soltero", "Casado", "Viudo", "Divorciado"];
  RxString pickestadocivil = "Soltero".obs;
  List<String> listpais = ["Argentina", "Mexico", "Peru", "Chile"];
  RxString pickpais = "Mexico".obs;
  List<String> listparentesco = [
    "Madres/Padre",
    "Hermano(a)",
    "Familiar",
    "Amigo"
  ];
  RxString pickparentesco = "Familiar".obs;
  List<String> listgenero = ["Masculino", "Femenino"];
  RxString pickgenero = "Masculino".obs;

  var nombrecontroller = TextEditingController();
  var estadocontroller = TextEditingController();
  var correocontroller = TextEditingController();
  var ciudadcontrolller = TextEditingController();
  var zonacontroller = TextEditingController();
  var maternocontroller = TextEditingController();
  var paternocontroller = TextEditingController();
  var callecontroller = TextEditingController();
  var fotocontroller = TextEditingController();
  var datecontroller = TextEditingController();
  var numbercontrolller = TextEditingController();
  var recommendedcontroller = TextEditingController();
  var generocontroller = TextEditingController();
  var fraccionamientocontroller = TextEditingController();
  var doctorconsultacontroller = TextEditingController();
  var estadocivilcontroller = TextEditingController();
  var acompanacontroller = TextEditingController();
  var activecontroller = TextEditingController();
  var escolaridadcontroller = TextEditingController();
  var parentescocontroller = TextEditingController();
  var paiscontroller = TextEditingController();
  var phonecontroller = TextEditingController();

  void buildIsDetails(Paciente p) {
    nombrecontroller.text = p.name!;
    estadocontroller.text = p.state!;
    correocontroller.text = p.email!;
    ciudadcontrolller.text = p.city!;
    zonacontroller.text = p.zone!;
    maternocontroller.text = p.apellidomaterno!;
    paternocontroller.text = p.apellidopaterno!;
    callecontroller.text = p.street!;
    fotocontroller.text = p.photo!;
    datecontroller.text = p.date!;
    numbercontrolller.text = p.number!;
    recommendedcontroller.text = p.recommendedpor!;
    generocontroller.text = p.gender!;
    fraccionamientocontroller.text = p.fraccionamiento!;
    doctorconsultacontroller.text = p.doctorconsult!;
    estadocivilcontroller.text = p.statuscivil!;
    acompanacontroller.text = p.companion!;
    activecontroller.text = p.active!;
    escolaridadcontroller.text = p.education!;
    parentescocontroller.text = p.relationship!;
    paiscontroller.text = p.country!;
    phonecontroller.text = p.phone!;
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    nombrecontroller.dispose();
    estadocontroller.dispose();
    correocontroller.dispose();
    ciudadcontrolller.dispose();
    zonacontroller.dispose();
    maternocontroller.dispose();
    paternocontroller.dispose();
    callecontroller.dispose();
    fotocontroller.dispose();
    datecontroller.dispose();
    numbercontrolller.dispose();
    recommendedcontroller.dispose();
    generocontroller.dispose();
    fraccionamientocontroller.dispose();
    doctorconsultacontroller.dispose();
    estadocivilcontroller.dispose();
    acompanacontroller.dispose();
    activecontroller.dispose();
    escolaridadcontroller.dispose();
    parentescocontroller.dispose();
    paiscontroller.dispose();
    phonecontroller.dispose();
  }

  void checkaltapaciente(GlobalKey<FormState> formkey) async {
    var f = formkey.currentState!.validate();
    if (!f) {
      return;
    } else {
      await uploadPhoto();

      Paciente paciente = new Paciente();
      paciente.name = nombrecontroller.text;
      paciente.email = correocontroller.text;
      paciente.apellidopaterno = paternocontroller.text;
      paciente.apellidomaterno = maternocontroller.text;
      paciente.city = ciudadcontrolller.text;
      paciente.zone = pickzona.value;
      paciente.date = datecontroller.text;
      paciente.companion = acompanacontroller.text;
      paciente.doctorconsult = doctorconsultacontroller.text;
      paciente.gender = pickgenero.value;
      paciente.number = numbercontrolller.text;

      paciente.fraccionamiento = fraccionamientocontroller.text;
      paciente.education = pickescolaridad.value;
      paciente.phone = phonecontroller.text;
      paciente.street = callecontroller.text;
      paciente.state = pickestado.value;
      paciente.statuscivil = pickestadocivil.value;
      paciente.photo = fotocontroller.text;
      paciente.country = pickpais.value;
      paciente.recommendedpor = recommendedcontroller.text;
      paciente.active = activecontroller.text;
      paciente.relationship = pickparentesco.value;
      formkey.currentState!.save();
      service.savePaciente(paciente);
      print("registrado");
      // Future.delayed(
      //   Duration(seconds: 2),
      //   () {
      //     Get.toNamed(Routes.PACIENTES);
      //   },
      // );

      print("${paciente.name}" + "a" + "${paciente.email}");
    }
  }

  Image? img;
  Uint8List? bytesFromPicker;
  var picked;
  void savephoto() async {
// Create a reference to "mountains.jpg"

    // img = await ImagePickerWeb.getImageAsWidget();
    bytesFromPicker = await ImagePickerWeb.getImageAsBytes();
    //  picked = await FilePicker.platform.pickFiles();
    // if (picked != null) {
    //   print(picked.files.first.name);
    // }
    // print("${img!.image}");
    update();
  }

  uploadPhoto() async {
    final uui = Uuid().v1();
    final imagname = uui;
    final storageRef = FirebaseStorage.instance.ref();

    final mountainsRef = storageRef.child("${imagname}");

    // File file = File.fromRawPath(bytesFromPicker!);
    await mountainsRef.putData(bytesFromPicker!);
    fotocontroller.text = await mountainsRef.getDownloadURL();
    print(fotocontroller.text);
  }
}
