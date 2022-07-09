import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/textformfield.dart';
import 'package:medicinesystem/app/controllers/exploracionfisica_controller.dart';
import 'package:medicinesystem/app/controllers/historiaclinica_controller.dart';
import 'package:sizer/sizer.dart';

class NoPatologicosView extends StatefulWidget {
  NoPatologicosView({Key? key}) : super(key: key);

  @override
  State<NoPatologicosView> createState() => _NoPatologicosViewState();
}

class _NoPatologicosViewState extends State<NoPatologicosView> {
  String select = "Emma";
  TextEditingController craneocontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HistoriaclinicaController>(
        init: HistoriaclinicaController(),
        builder: (_) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Divider(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child:  Text(
                      "ANTECEDENTES PERSONALES NO PATOLÓGICOS",
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
                            child: Text("Casa habitación",
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
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Material de construcción de la casa",
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
                SizedBox(height: 2.h,),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Convivencia con animales doméssticos", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue: select,
                                onChanged: (value) {
                                  select = value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue: select,
                                onChanged: (value) {
                                  select = value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                           
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
                                Text("Tabaquismo en casa", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue: select,
                                onChanged: (value) {
                                  select = value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue: select,
                                onChanged: (value) {
                                  select = value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                           
                          ],
                        )
                      ],
                    )),
                  ],
                ),
                SizedBox(height: 2.h,),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Cuadro de vacunación completo", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue: select,
                                onChanged: (value) {
                                  select = value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue: select,
                                onChanged: (value) {
                                  select = value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                           
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
                            child: Text("Alimentación",
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
                SizedBox(height: 2.h,),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Tipo de leche que ingiere",
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
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child:
                                Text("Practica algún deporte", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue: select,
                                onChanged: (value) {
                                  select = value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue: select,
                                onChanged: (value) {
                                  select = value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                           
                          ],
                        )
                      ],
                    )),
                  ],
                ),
                SizedBox(height: 2.h,),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Sonrisa",
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
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Acercamiento/ presión de objeto",
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
                SizedBox(height: 2.h,),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Sedestación con apoyo",
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
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Deambular",
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
                SizedBox(height: 2.h,),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Palabras referenciales",
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
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Frases o expresiones de 2-3 palabras",
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
                SizedBox(height: 2.h,),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Bebe de la taza solo",
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
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Se viste solo",
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
                SizedBox(height: 2.h,),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Control de esfínteres de durante el día",
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
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Control de esfínteres durante la noche",
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
                 SizedBox(height: 2.h,),
              ],
            ),
          );
        });
  }
}
