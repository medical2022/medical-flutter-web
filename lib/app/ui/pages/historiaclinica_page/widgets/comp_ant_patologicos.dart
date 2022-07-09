import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/textformfield.dart';
import 'package:medicinesystem/app/controllers/exploracionfisica_controller.dart';
import 'package:medicinesystem/app/controllers/historiaclinica_controller.dart';
import 'package:sizer/sizer.dart';

class PatologicosView extends StatefulWidget {
  PatologicosView({Key? key}) : super(key: key);

  @override
  State<PatologicosView> createState() => _PatologicosViewState();
}

class _PatologicosViewState extends State<PatologicosView> {
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
                      "ANTECEDENTES PERSONALES PATOLÓGICOS",
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
                            child: Text("Ha sido internado anteriormente", style: TextStyle(fontSize: 18))),
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
                                Text("Fracturas", style: TextStyle(fontSize: 18))),
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
                            child: Text("Transfusiones sanguíneas", style: TextStyle(fontSize: 18))),
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
                                Text("Alergias a medicamentos", style: TextStyle(fontSize: 18))),
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
                            child: Text("Alergias a alimentos", style: TextStyle(fontSize: 18))),
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
                                Text("Infecciones de vias aéreas superiores", style: TextStyle(fontSize: 18))),
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
                            child: Text("Infecciones de vías urinarias", style: TextStyle(fontSize: 18))),
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
                                Text("Reacciones a la vacuna", style: TextStyle(fontSize: 18))),
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
                            child: Text("Crisis convulsivas", style: TextStyle(fontSize: 18))),
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
                                Text("Reflujo gastroesofágico", style: TextStyle(fontSize: 18))),
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Adolescentes (Pacientes mayores de 13 años",
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  )),
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
                            child: Text("Alcoholismo", style: TextStyle(fontSize: 18))),
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
                                Text("Tabaquismo", style: TextStyle(fontSize: 18))),
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
                            child:
                                Text("Drogas", style: TextStyle(fontSize: 18))),
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
                            child: Text("Inicio de vida sexual activa",
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
                            child: Text("Número de parejas sexuales",
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
