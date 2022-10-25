import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/textformfield.dart';
import 'package:medicinesystem/app/controllers/exploracionfisica_controller.dart';
import 'package:medicinesystem/app/controllers/historiaclinica_controller.dart';
import 'package:sizer/sizer.dart';

class HeredofamiliaresView extends StatefulWidget {
  HeredofamiliaresView({Key? key}) : super(key: key);

  @override
  State<HeredofamiliaresView> createState() => _HeredofamiliaresViewState();
}

class _HeredofamiliaresViewState extends State<HeredofamiliaresView> {
  String select = "Emma";
  TextEditingController craneocontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HistoriaclinicaController>(
        init: HistoriaclinicaController(),
        builder: (_) {
          return Obx(() => Column(
                children: [
                  Divider(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Antecedentes heredofamiliares",
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
                              child:
                                  Text("Malformaciones congénitas", style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Si",
                                  groupValue: _.radioMalFormaciones.value,
                                  onChanged: (value) {
                                    _.radioMalFormaciones.value =
                                        value.toString();
                                  }),
                              Text("Si"),
                              Radio(
                                  value: "No",
                                  groupValue: _.radioMalFormaciones.value,
                                  onChanged: (value) {
                                    _.radioMalFormaciones.value =
                                        value.toString();
                                  }),
                              Text("No"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, _.malformacionesController))
                            ],
                          ),
                        
                      
                          // Align(
                          //     alignment: Alignment.centerLeft,
                          //     child: Text("Malformaciones congénitas",
                          //         style: TextStyle(fontSize: 18))),
                          // Row(
                          //   children: [
                          //     Radio(
                          //         value: "Si",
                          //         groupValue: _.radioMalFormaciones.value,
                          //         onChanged: (value) {
                          //           _.radioMalFormaciones.value =
                          //               value.toString();
                          //         }),
                          //     Text("Si"),
                          //     Radio(
                          //         value: "No",
                          //         groupValue: _.radioMalFormaciones.value,
                          //         onChanged: (value) {
                          //           _.radioMalFormaciones.value =
                          //               value.toString();
                          //         }),
                          //     Text("No"),
                          //     SizedBox(
                          //       width: 20,
                          //     ),
                          //   ],
                          // )
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
                              child: Text("Diabetes mellitus",
                                  style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Si",
                                  groupValue: _.radioDiabetesMellitus.value,
                                  onChanged: (value) {
                                    _.radioDiabetesMellitus.value =
                                        value.toString();
                                  }),
                              Text("Si"),
                              Radio(
                                  value: "No",
                                  groupValue: _.radioDiabetesMellitus.value,
                                  onChanged: (value) {
                                   _.radioDiabetesMellitus.value =
                                        value.toString();
                                  }),
                              Text("No"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, _.diabetesMellitusController))
                            ],
                          ),
                          
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
                              child: Text("Hipertensión arterial",
                                  style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Si",
                                  groupValue: _.radioHipertensionArterial.value,
                                  onChanged: (value) {
                                    _.radioHipertensionArterial.value =
                                        value.toString();
                                  }),
                              Text("Si"),
                              Radio(
                                  value: "No",
                                  groupValue: _.radioHipertensionArterial.value,
                                  onChanged: (value) {
                                    _.radioHipertensionArterial.value =
                                        value.toString();
                                  }),
                              Text("No"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, _.hipertensionArterialController))
                            ],
                          ),
                        
                          
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
                              child: Text("Epilepsía",
                                  style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Si",
                                  groupValue: _.radioEpilepsia.value,
                                  onChanged: (value) {
                                    _.radioEpilepsia.value =
                                        value.toString();
                                  }),
                              Text("Si"),
                              Radio(
                                  value: "No",
                                  groupValue: _.radioEpilepsia.value,
                                  onChanged: (value) {
                                    _.radioEpilepsia.value =
                                        value.toString();
                                  }),
                              Text("No"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, _.epilepsiaController))
                            ],
                          ),
                          
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
                              child: Text("Alergía",
                                  style: TextStyle(fontSize: 18))),
                                    Row(
                            children: [
                              Radio(
                                  value: "Si",
                                  groupValue: _.radioAlergia.value,
                                  onChanged: (value) {
                                    _.radioAlergia.value =
                                        value.toString();
                                  }),
                              Text("Si"),
                              Radio(
                                  value: "No",
                                  groupValue: _.radioAlergia.value,
                                  onChanged: (value) {
                                    _.radioAlergia.value =
                                        value.toString();
                                  }),
                              Text("No"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, _.alergiaController))
                            ],
                          ),
                          // Row(
                          //   children: [
                          //     Radio(
                          //         value: "Si",
                          //         groupValue: _.radioAlergia.value,
                          //         onChanged: (value) {
                          //           _.radioAlergia.value = value.toString();
                          //         }),
                          //     Text("Si"),
                          //     Radio(
                          //         value: "No",
                          //         groupValue: _.radioAlergia.value,
                          //         onChanged: (value) {
                          //           _.radioAlergia.value = value.toString();
                          //         }),
                          //     Text("No"),
                          //     SizedBox(
                          //       width: 20,
                          //     ),
                          //   ],
                          // )
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
                                  Text("Asma", style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Si",
                                  groupValue: _.radioAsma.value,
                                  onChanged: (value) {
                                    _.radioAsma.value =
                                        value.toString();
                                  }),
                              Text("Si"),
                              Radio(
                                  value: "No",
                                  groupValue: _.radioAsma.value,
                                  onChanged: (value) {
                                    _.radioAsma.value =
                                        value.toString();
                                  }),
                              Text("No"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, _.asmaController))
                            ],
                          ),
                          
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
                              child: Text("Lupus",
                                  style: TextStyle(fontSize: 18))),
                          
                          Row(
                            children: [
                              Radio(
                                  value: "Si",
                                  groupValue: _.radioLupus.value,
                                  onChanged: (value) {
                                    _.radioLupus.value =
                                        value.toString();
                                  }),
                              Text("Si"),
                              Radio(
                                  value: "No",
                                  groupValue: _.radioLupus.value,
                                  onChanged: (value) {
                                    _.radioLupus.value =
                                        value.toString();
                                  }),
                              Text("No"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, _.lupusController))
                            ],
                          ),
                          
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
                              child: Text("Enfermedad renal",
                                  style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Si",
                                  groupValue: _.radioEnfermedadRenal.value,
                                  onChanged: (value) {
                                    _.radioEnfermedadRenal.value =
                                        value.toString();
                                  }),
                              Text("Si"),
                              Radio(
                                  value: "No",
                                  groupValue: _.radioEnfermedadRenal.value,
                                  onChanged: (value) {
                                    _.radioEnfermedadRenal.value =
                                        value.toString();
                                  }),
                              Text("No"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, _.enfermedadRenalController))
                            ],
                          ),
                          
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
                              child: Text("Enuresis",
                                  style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Si",
                                  groupValue: _.radioEnuresis.value,
                                  onChanged: (value) {
                                    _.radioEnuresis.value =
                                        value.toString();
                                  }),
                              Text("Si"),
                              Radio(
                                  value: "No",
                                  groupValue: _.radioEnuresis.value,
                                  onChanged: (value) {
                                    _.radioEnuresis.value =
                                        value.toString();
                                  }),
                              Text("No"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, _.enuresisController))
                            ],
                          ),
                          
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
                              child: Text("Obesidad",
                                  style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Si",
                                  groupValue: _.radioObesidad.value,
                                  onChanged: (value) {
                                    _.radioObesidad.value =
                                        value.toString();
                                  }),
                              Text("Si"),
                              Radio(
                                  value: "No",
                                  groupValue: _.radioObesidad.value,
                                  onChanged: (value) {
                                    _.radioObesidad.value =
                                        value.toString();
                                  }),
                              Text("No"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, _.obesidadController))
                            ],
                          ),
                          
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
                              child: Text("Cancer",
                                  style: TextStyle(fontSize: 18))),
                          Row(
                            children: [
                              Radio(
                                  value: "Si",
                                  groupValue: _.radioCancer.value,
                                  onChanged: (value) {
                                    _.radioCancer.value =
                                        value.toString();
                                  }),
                              Text("Si"),
                              Radio(
                                  value: "No",
                                  groupValue: _.radioCancer.value,
                                  onChanged: (value) {
                                    _.radioCancer.value =
                                        value.toString();
                                  }),
                              Text("No"),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  flex: 2,
                                  child: textformfield("Especificar",
                                      Get.width / 7, _.cancerController))
                            ],
                          ),
                          
                        ],
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Column(
                        children: [],
                      )),
                    ],
                  ),
                ],
              ));
        });
  }
}
