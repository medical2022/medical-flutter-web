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
            child: Obx(()=> Column(
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
                                    Get.width / 7,_.numeroDeEmbarazoController ))
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
                                    Get.width / 7, _.visitaMedicoDuranteEmbarazoController))
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
                                groupValue: _.radioAmenazaDeAborto.value,
                                onChanged: (value) {
                                  _.radioAmenazaDeAborto.value = value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue: _.radioAmenazaDeAborto.value,
                                onChanged: (value) {
                                  _.radioAmenazaDeAborto.value = value.toString();
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
                                groupValue: _.radioNinoDeseado.value,
                                onChanged: (value) {
                                  _.radioNinoDeseado.value = value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue: _.radioNinoDeseado.value,
                                onChanged: (value) {
                                  _.radioNinoDeseado.value = value.toString();
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
                                groupValue: _.radioNinoPlaneado.value,
                                onChanged: (value) {
                                  _.radioNinoPlaneado.value = value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue: _.radioNinoPlaneado.value,
                                onChanged: (value) {
                                  _.radioNinoPlaneado.value = value.toString();
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
                                groupValue: _.radioComplicacionDuranteEmbarazo.value,
                                onChanged: (value) {
                                  _.radioComplicacionDuranteEmbarazo.value = value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue: _.radioComplicacionDuranteEmbarazo.value,
                                onChanged: (value) {
                                  _.radioComplicacionDuranteEmbarazo.value = value.toString();
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
                                    Get.width / 7, _.semanasDeGestacionNacimientoController))
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
                                    Get.width / 7, _.tipoDePartoController))
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
                                    Get.width / 7, _.pesoAlNacerController))
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
                            child: Text("Talla al nacer",
                                style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: textformfield("Especificar",
                                    Get.width / 7, _.tallaAlNacerController))
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
                                    Get.width / 7, _.perimetroCefalicoController))
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
                                groupValue: _.radioLloroRespiroAlNacer.value,
                                onChanged: (value) {
                                  _.radioLloroRespiroAlNacer.value = value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue: _.radioLloroRespiroAlNacer.value,
                                onChanged: (value) {
                                  _.radioLloroRespiroAlNacer.value = value.toString();
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
                                    Get.width / 7, _.apgarAlNacimientoController))
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
                                groupValue: _.radioEgresoConLaMadre.value,
                                onChanged: (value) {
                                  _.radioEgresoConLaMadre.value = value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue: _.radioEgresoConLaMadre.value,
                                onChanged: (value) {
                                  _.radioEgresoConLaMadre.value = value.toString();
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
                                    Get.width / 7, _.tarnizMetabolicoController))
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
                                groupValue: _.radioTarnizAuditivo.value,
                                onChanged: (value) {
                                  _.radioTarnizAuditivo.value = value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue: _.radioTarnizAuditivo.value,
                                onChanged: (value) {
                                  _.radioTarnizAuditivo.value = value.toString();
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
                                    Get.width / 7, _.vacunasNacimientoController))
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
                                groupValue: _.radioVitaminaK.value,
                                onChanged: (value) {
                                  _.radioVitaminaK.value = value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue: _.radioVitaminaK.value,
                                onChanged: (value) {
                                  _.radioVitaminaK.value = value.toString();
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
                                groupValue: _.radioVitaminaA.value,
                                onChanged: (value) {
                                  _.radioVitaminaA.value = value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue: _.radioVitaminaA.value,
                                onChanged: (value) {
                                  _.radioVitaminaA.value = value.toString();
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
                                    Get.width / 7, _.perinatalesController))
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
            ),)
          );
        });
  }
}
