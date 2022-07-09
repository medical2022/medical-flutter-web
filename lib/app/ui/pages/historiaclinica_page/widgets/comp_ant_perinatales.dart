import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/textformfield.dart';
import 'package:medicinesystem/app/controllers/exploracionfisica_controller.dart';
import 'package:medicinesystem/app/controllers/historiaclinica_controller.dart';
import 'package:sizer/sizer.dart';

class PerinatalesView extends StatefulWidget {
  PerinatalesView({Key? key}) : super(key: key);

  @override
  State<PerinatalesView> createState() => _PerinatalesViewState();
}

class _PerinatalesViewState extends State<PerinatalesView> {
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
                  child: Text(
                    "Antecedentes Perinatales ",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Número de embarazo",
                                style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: textformfield("Especificar",
                                    Get.width / 7, craneocontroller))
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
                            child: Text("Visitas a su médico ginecólogo durante el embarazo",
                                style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: textformfield("Especificar",
                                    Get.width / 7, craneocontroller))
                          ],
                        )
                      ],
                    )),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Amenaza de aborto",
                                style: TextStyle(fontSize: 18))),
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
                            child: Text("Niño deseado",
                                style: TextStyle(fontSize: 18))),
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
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Niño planeado",
                                style: TextStyle(fontSize: 18))),
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
                            child: Text("Complicación durante el embarazo",
                                style: TextStyle(fontSize: 18))),
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
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Semanas de gestación de nacimiento",
                                style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: textformfield("Especificar",
                                    Get.width / 7, craneocontroller))
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
                            child: Text("Tipo de parto",
                                style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: textformfield("Especificar",
                                    Get.width / 7, craneocontroller))
                          ],
                        )
                      ],
                    )),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Peso al nacer",
                                style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: textformfield("Especificar",
                                    Get.width / 7, craneocontroller))
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
                            child: Text("Tala al nacer",
                                style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: textformfield("Especificar",
                                    Get.width / 7, craneocontroller))
                          ],
                        )
                      ],
                    )),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Perímetro cefálico",
                                style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: textformfield("Especificar",
                                    Get.width / 7, craneocontroller))
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
                                Text("Lloró y respiró al nacer", style: TextStyle(fontSize: 18))),
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
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Apgar el nacimiento",
                                style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: textformfield("Especificar",
                                    Get.width / 7, craneocontroller))
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
                                Text("Egresó con la madre", style: TextStyle(fontSize: 18))),
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
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Tarniz metabólico",
                                style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: textformfield("Especificar",
                                    Get.width / 7, craneocontroller))
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
                                Text("Tarniz auditivo", style: TextStyle(fontSize: 18))),
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
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Vacunas al nacimiento",
                                style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: textformfield("Especificar",
                                    Get.width / 7, craneocontroller))
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
                                Text("Vitamina K", style: TextStyle(fontSize: 18))),
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
                
                SizedBox(
                  height: 2.h,
                ),
                
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child:
                                Text("Vitamina A", style: TextStyle(fontSize: 18))),
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
                            child: Text("Perinatales",
                                style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: textformfield("Especificar",
                                    Get.width / 7, craneocontroller))
                          ],
                        )
                      ],
                    )),
                   
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                
              ],
            ),
          );
        });
  }
}
