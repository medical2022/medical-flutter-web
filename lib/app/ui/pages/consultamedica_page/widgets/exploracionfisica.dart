import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/textformfield.dart';
import 'package:medicinesystem/app/controllers/consultamedica_controller.dart';
import 'package:medicinesystem/app/controllers/exploracionfisica_controller.dart';
import 'package:medicinesystem/app/data/models/ConsultaMedica_model.dart';

class ExploracionfisicaView extends StatefulWidget {
  ExploracionfisicaView({Key? key}) : super(key: key);

  @override
  State<ExploracionfisicaView> createState() => _ExploracionfisicaViewState();
}

class _ExploracionfisicaViewState extends State<ExploracionfisicaView> {
  String select = "Emma";
  TextEditingController craneocontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    var con = Get.put(ConsultamedicaController());
    return GetBuilder<ExploracionfisicaController>(
        init: ExploracionfisicaController(),
        builder: (_) {
          return Obx(() => Column(
                children: [
                  Divider(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Exploración física",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Cráneo",
                                  style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Normal",
                                  groupValue: _.selectCraneo.value,
                                  onChanged: (value) {
                                    _.selectCraneo.value = value.toString();

                                    con.craneoController.text =
                                        value.toString();
                                  }),
                              Text("Normal"),
                              Radio(
                                  value: "Anormal",
                                  groupValue: _.selectCraneo.value,
                                  onChanged: (value) {
                                    _.selectCraneo.value = value.toString();
                                    con.craneoController.text = "";
                                  }),
                              Text("Anormal"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, con.craneoController))
                            ],
                          )
                        ],
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Tórax",
                                  style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Normal",
                                  groupValue: _.selectTorax.value,
                                  onChanged: (value) {
                                    _.selectTorax.value = value.toString();
                                    con.toraxController.text = value.toString();
                                  }),
                              Text("Normal"),
                              Radio(
                                  value: "Anormal",
                                  groupValue: _.selectTorax.value,
                                  onChanged: (value) {
                                    _.selectTorax.value = value.toString();
                                    con.toraxController.text = "";
                                  }),
                              Text("Anormal"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, con.toraxController))
                            ],
                          )
                        ],
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child:
                                  Text("Oído", style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Normal",
                                  groupValue: _.selectOido.value,
                                  onChanged: (value) {
                                    _.selectOido.value = value.toString();
                                    con.oidoController.text = value.toString();
                                  }),
                              Text("Normal"),
                              Radio(
                                  value: "Anormal",
                                  groupValue: _.selectOido.value,
                                  onChanged: (value) {
                                    _.selectOido.value = value.toString();
                                    con.oidoController.text = "";
                                  }),
                              Text("Anormal"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, con.oidoController))
                            ],
                          )
                        ],
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Abdomen",
                                  style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Normal",
                                  groupValue: _.selectAbdomen.value,
                                  onChanged: (value) {
                                    _.selectAbdomen.value = value.toString();
                                    con.abdomenController.text = value.toString();
                                  }),
                              Text("Normal"),
                              Radio(
                                  value: "Anormal",
                                  groupValue: _.selectAbdomen.value,
                                  onChanged: (value) {
                                    _.selectAbdomen.value = value.toString();
                                    con.abdomenController.text = "";
                                  }),
                              Text("Anormal"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, con.abdomenController))
                            ],
                          )
                        ],
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child:
                                  Text("Ojos", style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Normal",
                                  groupValue: _.selectOjos.value,
                                  onChanged: (value) {
                                    _.selectOjos.value = value.toString();
                                    con.ojosController.text = value.toString();
                                  }),
                              Text("Normal"),
                              Radio(
                                  value: "Anormal",
                                  groupValue: _.selectOjos.value,
                                  onChanged: (value) {
                                    _.selectOjos.value = value.toString();
                                    con.ojosController.text = "";
                                  }),
                              Text("Anormal"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, con.ojosController))
                            ],
                          )
                        ],
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Extremidades",
                                  style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Normal",
                                  groupValue: _.selectExtremidades.value,
                                  onChanged: (value) {
                                    _.selectExtremidades.value =
                                        value.toString();
                                    con.extremidadesController.text = value.toString();
                                  }),
                              Text("Normal"),
                              Radio(
                                  value: "Anormal",
                                  groupValue: _.selectExtremidades.value,
                                  onChanged: (value) {
                                    _.selectExtremidades.value =
                                        value.toString();
                                    con.extremidadesController.text = "";
                                  }),
                              Text("Anormal"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield(
                                      "Especificar",
                                      Get.width / 7,
                                      con.extremidadesController))
                            ],
                          )
                        ],
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Orofaringe",
                                  style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Normal",
                                  groupValue: _.selectOrafaringe.value,
                                  onChanged: (value) {
                                    _.selectOrafaringe.value = value.toString();
                                    con.orofaringeController.text = value.toString();
                                  }),
                              Text("Normal"),
                              Radio(
                                  value: "Anormal",
                                  groupValue: _.selectOrafaringe.value,
                                  onChanged: (value) {
                                    _.selectOrafaringe.value = value.toString();
                                    con.orofaringeController.text = "";
                                  }),
                              Text("Anormal"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, con.orofaringeController))
                            ],
                          )
                        ],
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Observaciones",
                                  style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: textformfield(
                                      "Especificar",
                                      Get.width / 7,
                                      con.observacionesController))
                            ],
                          )
                        ],
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Narinas",
                                  style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Normal",
                                  groupValue: _.selectNarinas.value,
                                  onChanged: (value) {
                                    _.selectNarinas.value = value.toString();
                                    con.narinasController.text = value.toString();
                                  }),
                              Text("Normal"),
                              Radio(
                                  value: "Anormal",
                                  groupValue: _.selectNarinas.value,
                                  onChanged: (value) {
                                    _.selectNarinas.value = value.toString();
                                    con.narinasController.text = "";
                                  }),
                              Text("Anormal"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, con.narinasController))
                            ],
                          )
                        ],
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Cuello",
                                  style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Normal",
                                  groupValue: _.selectCuello.value,
                                  onChanged: (value) {
                                    _.selectCuello.value = value.toString();
                                    con.cuelloController.text = value.toString();
                                  }),
                              Text("Normal"),
                              Radio(
                                  value: "Anormal",
                                  groupValue: _.selectCuello.value,
                                  onChanged: (value) {
                                    _.selectCuello.value = value.toString();
                                    con.cuelloController.text = "";
                                  }),
                              Text("Anormal"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, con.cuelloController))
                            ],
                          )
                        ],
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                  Divider(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Exploración Neurológica especial",
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Nervios craneales",
                                  style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Normal",
                                  groupValue: _.selectNerviosCraneales.value,
                                  onChanged: (value) {
                                    _.selectNerviosCraneales.value =
                                        value.toString();
                                    con.nerviosCranealesController.text = value.toString();
                                  }),
                              Text("Normal"),
                              Radio(
                                  value: "Anormal",
                                  groupValue: _.selectNerviosCraneales.value,
                                  onChanged: (value) {
                                    _.selectNerviosCraneales.value =
                                        value.toString();
                                    con.nerviosCranealesController.text = "";
                                  }),
                              Text("Anormal"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield(
                                      "Especificar",
                                      Get.width / 7,
                                      con.nerviosCranealesController))
                            ],
                          )
                        ],
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Tono muscular",
                                  style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Normal",
                                  groupValue: _.selectTonoMuscular.value,
                                  onChanged: (value) {
                                    _.selectTonoMuscular.value =
                                        value.toString();
                                    con.tonoMuscularController.text = value.toString();
                                  }),
                              Text("Normal"),
                              Radio(
                                  value: "Anormal",
                                  groupValue: _.selectTonoMuscular.value,
                                  onChanged: (value) {
                                    _.selectTonoMuscular.value =
                                        value.toString();
                                    con.tonoMuscularController.text = "";
                                  }),
                              Text("Anormal"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield(
                                      "Especificar",
                                      Get.width / 7,
                                      con.tonoMuscularController))
                            ],
                          )
                        ],
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Fuerza 6/6",
                                  style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Normal",
                                  groupValue: _.selectFuerza.value,
                                  onChanged: (value) {
                                    _.selectFuerza.value = value.toString();
                                    con.fuerzaController.text = value.toString();
                                  }),
                              Text("Normal"),
                              Radio(
                                  value: "Anormal",
                                  groupValue: _.selectFuerza.value,
                                  onChanged: (value) {
                                    _.selectFuerza.value = value.toString();
                                    con.fuerzaController.text = "";
                                  }),
                              Text("Anormal"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, con.fuerzaController))
                            ],
                          )
                        ],
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Reflejos osteotendinosos",
                                  style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Normal",
                                  groupValue: _.selectReflejos.value,
                                  onChanged: (value) {
                                    _.selectReflejos.value = value.toString();
                                    con.reflejosController.text = value.toString();
                                  }),
                              Text("Normal"),
                              Radio(
                                  value: "Anormal",
                                  groupValue: _.selectReflejos.value,
                                  onChanged: (value) {
                                    _.selectReflejos.value = value.toString();
                                    con.reflejosController.text = "";
                                  }),
                              Text("Anormal"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, con.reflejosController))
                            ],
                          )
                        ],
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Sensibilidad conservada",
                                  style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Normal",
                                  groupValue: _.selectSensibilidad.value,
                                  onChanged: (value) {
                                    _.selectSensibilidad.value =
                                        value.toString();
                                    con.sensibilidadController.text = value.toString();
                                  }),
                              Text("Normal"),
                              Radio(
                                  value: "Anormal",
                                  groupValue: _.selectSensibilidad.value,
                                  onChanged: (value) {
                                    _.selectSensibilidad.value =
                                        value.toString();
                                    con.sensibilidadController.text = "";
                                  }),
                              Text("Anormal"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield(
                                      "Especificar",
                                      Get.width / 7,
                                      con.sensibilidadController))
                            ],
                          )
                        ],
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Marcha",
                                  style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Normal",
                                  groupValue: _.selectMarcha.value,
                                  onChanged: (value) {
                                    _.selectMarcha.value = value.toString();
                                    con.marchaController.text = value.toString();
                                  }),
                              Text("Normal"),
                              Radio(
                                  value: "Anormal",
                                  groupValue: _.selectMarcha.value,
                                  onChanged: (value) {
                                    _.selectMarcha.value = value.toString();
                                    con.marchaController.text = "";
                                  }),
                              Text("Anormal"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, con.marchaController))
                            ],
                          )
                        ],
                      )),
                    ],
                  ),
                ],
              ));
        });
  }
}
