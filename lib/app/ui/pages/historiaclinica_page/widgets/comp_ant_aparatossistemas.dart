import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/textformfield.dart';
import 'package:medicinesystem/app/controllers/exploracionfisica_controller.dart';
import 'package:sizer/sizer.dart';
class AparatossistemasView extends StatefulWidget {
  AparatossistemasView({Key? key}) : super(key: key);

  @override
  State<AparatossistemasView> createState() => _AparatossistemasViewState();
}

class _AparatossistemasViewState extends State<AparatossistemasView> {
  String select = "Emma";
  TextEditingController craneocontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExploracionfisicaController>(
        init: ExploracionfisicaController(),
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
                      "Aparatos y sistemas",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),),
                   SizedBox(height: 2.h,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Neuroesquelético",
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
                            child:
                                Text("Traimatismo craneoencefálico", style: TextStyle(fontSize: 18))),
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
                            child: Text("Cefalea recurrente (Dolor de cabeza)", style: TextStyle(fontSize: 18))),
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
                SizedBox(height: 2.h),
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
                                Text("Alteración en la marcha", style: TextStyle(fontSize: 18))),
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
                 SizedBox(height: 2.h),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Pérdida de conocimiento", style: TextStyle(fontSize: 18))),
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
                            child: Text("Problemas de conducta",
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
                SizedBox(height: 2.h,),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Fracturas",
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
                        
                      ],
                    )),
                  ],
                ),
                   SizedBox(height: 2.h,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Cardiopulmonar",
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    )),
                 SizedBox(height: 2.h),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Asma", style: TextStyle(fontSize: 18))),
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
                            child: Text("Infecciones recurrentes de vías aéreas superiores",
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
                 SizedBox(height: 2.h),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Dificultad para respirar al caminar largas distancias", style: TextStyle(fontSize: 18))),
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
                            child: Text("Dificultad para respirar al caminar pequeñas distancias", style: TextStyle(fontSize: 18))),
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
                SizedBox(height: 2.h),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Cianosis (Dedos morados)", style: TextStyle(fontSize: 18))),
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
                            child: Text("Malformación cardiaca", style: TextStyle(fontSize: 18))),
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
                      "Gastronutricional",
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Reflujo gastroesofágico", style: TextStyle(fontSize: 18))),
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
                            child: Text("Intolerancia a la proteína de la leche o a la lactosa", style: TextStyle(fontSize: 18))),
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
                SizedBox(height: 2.h),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Diarrea recurrente", style: TextStyle(fontSize: 18))),
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
                            child: Text("Falta de incremento en el peso y la talla", style: TextStyle(fontSize: 18))),
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
                SizedBox(height: 2.h),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Estreñimiento", style: TextStyle(fontSize: 18))),
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
                            child: Text("Evaluaciones sanguinolentas", style: TextStyle(fontSize: 18))),
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
                SizedBox(height: 2.h),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Se ha detectado problemas de parasitosis intestinal", style: TextStyle(fontSize: 18))),
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
                        
                           
                          ],
                        
                      
                    )),
                  ],
                ),
                 SizedBox(height: 2.h),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Genitourinario",
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    )),
                     SizedBox(height: 2.h),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Ha cursado con infección de vías urinarias recurrentes", style: TextStyle(fontSize: 18))),
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
                            child: Text("Moja la cama por las noches (Enuresis", style: TextStyle(fontSize: 18))),
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
                       SizedBox(height: 2.h),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Dolor al orinar", style: TextStyle(fontSize: 18))),
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
                        
                      ],
                    )),
                  ],
                ),
                       SizedBox(height: 2.h),
                       Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Piel y Faneras",
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    )),
                     SizedBox(height: 2.h),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Pérdida del cabello", style: TextStyle(fontSize: 18))),
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
                            child: Text("Erupciones recurrentes en la piel", style: TextStyle(fontSize: 18))),
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
                     SizedBox(height: 2.h),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Piel reseca", style: TextStyle(fontSize: 18))),
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
                        
                      ],
                    )),
                  ],
                ),
                     SizedBox(height: 2.h),
                     Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Narinas",
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    )),
                     SizedBox(height: 2.h),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Rinorrea hialina recurrent (Mocos cristalino recurrente)", style: TextStyle(fontSize: 18))),
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
                            child: Text("Hemorragia de la narinas recurrentes (Sangrado)", style: TextStyle(fontSize: 18))),
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
