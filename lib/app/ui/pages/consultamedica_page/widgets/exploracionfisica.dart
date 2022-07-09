import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/textformfield.dart';
import 'package:medicinesystem/app/controllers/exploracionfisica_controller.dart';

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
    return GetBuilder<ExploracionfisicaController>(
        init: ExploracionfisicaController(),
        builder: (_) {
          return Obx(()=>Column(
            children: [
              Divider(
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child:  Text(
                    "Exploración física",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),),
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
                          child:
                              Text("Cráneo", style: TextStyle(fontSize: 18))),
                      Row(
                        children: [
                           Radio(
                              value: "Normal",
                              groupValue: _.selectCraneo.value,
                              onChanged: (value) {
                                _.selectCraneo.value = value.toString();
                              }),
                          Text("Normal"),
                          Radio(
                              value: "Anormal",
                              groupValue: _.selectCraneo.value,
                              onChanged: (value) {
                                _.selectCraneo.value = value.toString();
                              }),
                          Text("Anormal"),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              flex: 2,
                              child: textformfield("Especificar", Get.width / 7,
                                  craneocontroller))
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
                          child: Text("Tórax", style: TextStyle(fontSize: 18))),
                      Row(
                        children: [
                          Radio(
                              value: "Normal",
                              groupValue: _.selectTorax.value,
                              onChanged: (value) {
                                _.selectTorax.value = value.toString();
                              }),
                          Text("Normal"),
                          Radio(
                              value: "Anormal",
                              groupValue: _.selectTorax.value,
                              onChanged: (value) {
                                _.selectTorax.value = value.toString();
                              }),
                          Text("Anormal"),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              flex: 2,
                              child: textformfield("Especificar", Get.width / 7,
                                  craneocontroller))
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
                          child: Text("Oído", style: TextStyle(fontSize: 18))),
                      Row(
                        children: [
                          Radio(
                              value: "Normal",
                              groupValue: _.selectOido.value,
                              onChanged: (value) {
                                _.selectOido.value = value.toString();
                              }),
                          Text("Normal"),
                          Radio(
                              value: "Anormal",
                              groupValue: _.selectOido.value,
                              onChanged: (value) {
                                _.selectOido.value = value.toString();
                              }),
                          Text("Anormal"),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              flex: 2,
                              child: textformfield("Especificar", Get.width / 7,
                                  craneocontroller))
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
                          child:
                              Text("Abdomen", style: TextStyle(fontSize: 18))),
                      Row(
                        children: [
                          Radio(
                              value: "Normal",
                              groupValue: _.selectAbdomen.value,
                              onChanged: (value) {
                                _.selectAbdomen.value = value.toString();
                              }),
                          Text("Normal"),
                          Radio(
                              value: "Anormal",
                              groupValue: _.selectAbdomen.value,
                              onChanged: (value) {
                                _.selectAbdomen.value = value.toString();
                              }),
                          Text("Anormal"),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              flex: 2,
                              child: textformfield("Especificar", Get.width / 7,
                                  craneocontroller))
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
                          child: Text("Ojos", style: TextStyle(fontSize: 18))),
                      Row(
                        children: [
                          Radio(
                              value: "Normal",
                              groupValue: _.selectOjos.value,
                              onChanged: (value) {
                                _.selectOjos.value = value.toString();
                              }),
                          Text("Normal"),
                          Radio(
                              value: "Anormal",
                              groupValue: _.selectOjos.value,
                              onChanged: (value) {
                                _.selectOjos.value = value.toString();
                              }),
                          Text("Anormal"),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              flex: 2,
                              child: textformfield("Especificar", Get.width / 7,
                                  craneocontroller))
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
                                _.selectExtremidades.value = value.toString();
                              }),
                          Text("Normal"),
                          Radio(
                              value: "Anormal",
                              groupValue: _.selectExtremidades.value,
                              onChanged: (value) {
                                _.selectExtremidades.value = value.toString();
                              }),
                          Text("Anormal"),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              flex: 2,
                              child: textformfield("Especificar", Get.width / 7,
                                  craneocontroller))
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
                              }),
                          Text("Normal"),
                          Radio(
                              value: "Anormal",
                              groupValue: _.selectOrafaringe.value,
                              onChanged: (value) {
                                _.selectOrafaringe.value = value.toString();
                              }),
                          Text("Anormal"),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              flex: 2,
                              child: textformfield("Especificar", Get.width / 7,
                                  craneocontroller))
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
                              child: textformfield("Especificar", Get.width / 7,
                                  craneocontroller))
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
                              Text("Narinas", style: TextStyle(fontSize: 18))),
                      Row(
                        children: [
                          Radio(
                              value: "Normal",
                              groupValue: _.selectNarinas.value,
                              onChanged: (value) {
                                _.selectNarinas.value = value.toString();
                              }),
                          Text("Normal"),
                          Radio(
                              value: "Anormal",
                              groupValue: _.selectNarinas.value,
                              onChanged: (value) {
                                _.selectNarinas.value = value.toString();
                              }),
                          Text("Anormal"),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              flex: 2,
                              child: textformfield("Especificar", Get.width / 7,
                                  craneocontroller))
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
                          child:
                              Text("Cuello", style: TextStyle(fontSize: 18))),
                      Row(
                        children: [
                          Radio(
                              value: "Normal",
                              groupValue: _.selectCuello.value,
                              onChanged: (value) {
                                _.selectCuello.value = value.toString();
                              }),
                          Text("Normal"),
                          Radio(
                              value: "Anormal",
                              groupValue: _.selectCuello.value,
                              onChanged: (value) {
                                _.selectCuello.value = value.toString();
                              }),
                          Text("Anormal"),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              flex: 2,
                              child: textformfield("Especificar", Get.width / 7,
                                  craneocontroller))
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
                                _.selectNerviosCraneales.value = value.toString();
                              }),
                          Text("Normal"),
                          Radio(
                              value: "Anormal",
                              groupValue: _.selectNerviosCraneales.value,
                              onChanged: (value) {
                                _.selectNerviosCraneales.value = value.toString();
                              }),
                          Text("Anormal"),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              flex: 2,
                              child: textformfield("Especificar", Get.width / 7,
                                  craneocontroller))
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
                                _.selectTonoMuscular.value = value.toString();
                              }),
                          Text("Normal"),
                          Radio(
                              value: "Anormal",
                              groupValue: _.selectTonoMuscular.value,
                              onChanged: (value) {
                                _.selectTonoMuscular.value = value.toString();
                              }),
                          Text("Anormal"),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              flex: 2,
                              child: textformfield("Especificar", Get.width / 7,
                                  craneocontroller))
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
                                select = value.toString();
                              }),
                          Text("Normal"),
                          Radio(
                              value: "Anormal",
                              groupValue: _.selectFuerza.value,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("Anormal"),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              flex: 2,
                              child: textformfield("Especificar", Get.width / 7,
                                  craneocontroller))
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
                              }),
                          Text("Normal"),
                          Radio(
                              value: "Anormal",
                              groupValue: _.selectReflejos.value,
                              onChanged: (value) {
                                _.selectReflejos.value = value.toString();
                              }),
                          Text("Anormal"),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              flex: 2,
                              child: textformfield("Especificar", Get.width / 7,
                                  craneocontroller))
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
                                _.selectSensibilidad.value = value.toString();
                              }),
                          Text("Normal"),
                          Radio(
                              value: "Anormal",
                              groupValue: _.selectSensibilidad.value,
                              onChanged: (value) {
                                _.selectSensibilidad.value = value.toString();
                              }),
                          Text("Anormal"),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              flex: 2,
                              child: textformfield("Especificar", Get.width / 7,
                                  craneocontroller))
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
                          child:
                              Text("Marcha", style: TextStyle(fontSize: 18))),
                      Row(
                        children: [
                          Radio(
                              value: "Normal",
                              groupValue: _.selectMarcha.value,
                              onChanged: (value) {
                                _.selectMarcha.value = value.toString();
                              }),
                          Text("Normal"),
                          Radio(
                              value: "Anormal",
                              groupValue: _.selectMarcha.value,
                              onChanged: (value) {
                                _.selectMarcha.value = value.toString();
                              }),
                          Text("Anormal"),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              flex: 2,
                              child: textformfield("Especificar", Get.width / 7,
                                  craneocontroller))
                        ],
                      )
                    ],
                  )),
                ],
              ),
            ],
          ) ) ;
        });
  }
}
