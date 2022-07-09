import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/dropdownbutton.dart';
import 'package:medicinesystem/app/components/navbartop.dart';
import 'package:medicinesystem/app/components/textformfield.dart';
import 'package:medicinesystem/app/controllers/altapaciente_controller.dart';
import 'package:medicinesystem/app/routes/app_pages.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:sizer/sizer.dart';

class Altapacienteform extends StatefulWidget {
  Altapacienteform({Key? key}) : super(key: key);

  @override
  State<Altapacienteform> createState() => _AltapacienteformState();
}

class _AltapacienteformState extends State<Altapacienteform> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey<FormState>();
    return Navbartop(
        widget: GetBuilder<AltapacientController>(
      init: AltapacientController(),
      builder: (_) {
        return Form(
          key: formkey,
          child: Column(
            children: [
              Text("Alta paciente"),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      print(_.pacien.name);
                      Get.toNamed(Routes.CONSULTA + Routes.CONSULTAMEDICA,
                          arguments: {"paciente": _.pacien});
                    },
                    child: AbsorbPointer(
                      child: Row(
                        children: [
                          Icon(Icons.heart_broken),
                          Text("Signos vitales"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Row(
                    children: [
                      Icon(Icons.book),
                      Text("Historia clínica"),
                    ],
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      print(_.pacien.name);
                      Get.toNamed(Routes.CONSULTA + Routes.CONSULTAMEDICA,
                          arguments: {"paciente": _.pacien});
                    },
                    child: AbsorbPointer(
                      child: Row(
                        children: [
                          Icon(FontAwesomeIcons.bookBookmark),
                          Text("Consulta médica"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.message),
                      Text("Agregar citas"),
                    ],
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.bookBookmark),
                      Text("Cartilla"),
                    ],
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Row(
                    children: [
                      Icon(Icons.download),
                      Text("Descarga y envio de expediente"),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: textformfield(
                          "Nombre", Get.width / 5, _.nombrecontroller)),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      flex: 1,
                      child: dropdownbuttonW(_.listestado, _.pickestado, 22.w)),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      flex: 1,
                      child: textformfield("Correo electrónico", Get.width / 5,
                          _.correocontroller)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: textformfield("Apellido materno", Get.width / 5,
                          _.maternocontroller)),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      flex: 1,
                      child: textformfield(
                          "Ciudad", Get.width / 5, _.ciudadcontrolller)),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      flex: 1,
                      child: Obx(
                          () => dropdownbuttonW(_.listzona, _.pickzona, 22.w))),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: textformfield("Apellido paterno", Get.width / 5,
                          _.paternocontroller)),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      flex: 1,
                      child: textformfield(
                          "Calle", Get.width / 5, _.callecontroller)),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          child: _.bytesFromPicker == null
                              ? Text("no hay foto")
                              : Container(
                                  height: 100,
                                  width: 150,
                                  child: Image.memory(_.bytesFromPicker!),
                                ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              _.savephoto();
                            },
                            child: Text("subir foto"))
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: textformfield("Fecha de nacimiento", Get.width / 5,
                          _.datecontroller)),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      flex: 1,
                      child: textformfield(
                          "Número", Get.width / 5, _.numbercontrolller)),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      flex: 1,
                      child: textformfield("Recomendado por", Get.width / 5,
                          _.recommendedcontroller)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Obx(() =>
                          dropdownbuttonW(_.listgenero, _.pickgenero, 22.w))),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      flex: 1,
                      child: textformfield("Fraccionamiento", Get.width / 5,
                          _.fraccionamientocontroller)),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      flex: 1,
                      child: textformfield("Médico al que consulta",
                          Get.width / 5, _.doctorconsultacontroller)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Obx(() => dropdownbuttonW(
                          _.listestadocivil, _.pickestadocivil, 22.w))),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      flex: 1,
                      child: textformfield("Quién lo acompaña", Get.width / 5,
                          _.acompanacontroller)),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      flex: 1,
                      child: textformfield(
                          "Activo", Get.width / 5, _.activecontroller)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Obx(() => dropdownbuttonW(
                          _.listescolaridad, _.pickescolaridad, 22.w))),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      flex: 1,
                      child: Obx(() => dropdownbuttonW(
                          _.listparentesco, _.pickparentesco, 22.w))),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Obx(
                          () => dropdownbuttonW(_.listpais, _.pickpais, 22.w))),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: textformfield(
                        "Teléfono", Get.width / 5, _.phonecontroller),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    // _.checkaltapaciente(formkey);

                    if (kIsWeb) {
                      print("joel");
                      _.checkaltapaciente(formkey);
                    }
                    // Get.dialog(Column(
                    //   children: [
                    //     Text("Se guardo la alta del paciente"),
                    //     ElevatedButton(
                    //         onPressed: () {
                    //           Get.offAllNamed(Routes.PACIENTES);
                    //         },
                    //         child: Text("Continuar"))
                    //   ],
                    // ));
                  },
                  child: Text("Guardar")),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        );
      },
    ));
  }
}
