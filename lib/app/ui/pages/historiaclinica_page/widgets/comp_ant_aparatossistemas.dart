import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/textformfield.dart';
import 'package:medicinesystem/app/controllers/exploracionfisica_controller.dart';
import 'package:medicinesystem/app/controllers/historiaclinica_controller.dart';
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
                                groupValue:
                                    _.radioTraumatismoCraneoencefalico.value,
                                onChanged: (value) {
                                  _.radioTraumatismoCraneoencefalico.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                    _.radioTraumatismoCraneoencefalico.value,
                                onChanged: (value) {
                                  _.radioTraumatismoCraneoencefalico.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.traumatismoCraneoencefalicoController))
                          ],
                        ),
                        // Row(
                        //   children: [
                        //     Radio(
                        //         value: "Si",
                        //         groupValue: _.radioTraumatismoCraneoencefalico.value,
                        //         onChanged: (value) {
                        //           _.radioTraumatismoCraneoencefalico.value = value.toString();
                        //         }),
                        //     Text("Si"),
                        //     Radio(
                        //         value: "No",
                        //         groupValue: _.radioTraumatismoCraneoencefalico.value,
                        //         onChanged: (value) {
                        //           _.radioTraumatismoCraneoencefalico.value = value.toString();
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
                            child: Text("Cefalea recurrente (Dolor de cabeza)", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue:
                                    _.radioCefaleaRecurrente.value,
                                onChanged: (value) {
                                  _.radioCefaleaRecurrente.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                    _.radioCefaleaRecurrente.value,
                                onChanged: (value) {
                                  _.radioCefaleaRecurrente.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.cefaleaRecurrenteController))
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
                            child: Text("Crisis convulsivas", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue:
                                    _.radioCrisisConvulsivasNeuroesqueletico.value,
                                onChanged: (value) {
                                  _.radioCrisisConvulsivasNeuroesqueletico.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                    _.radioCrisisConvulsivasNeuroesqueletico.value,
                                onChanged: (value) {
                                  _.radioCrisisConvulsivasNeuroesqueletico.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.crisisConvulsivasNeuroesqueleticoController))
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
                            child:
                                Text("Alteración en la marcha", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue:
                                    _.radioAlteracionMarcha.value,
                                onChanged: (value) {
                                  _.radioAlteracionMarcha.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                    _.radioAlteracionMarcha.value,
                                onChanged: (value) {
                                  _.radioAlteracionMarcha.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.alteracionMarchaController))
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
                            child: Text("Pérdida de conocimiento", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue:
                                    _.radioPerdidaConocimiento.value,
                                onChanged: (value) {
                                  _.radioPerdidaConocimiento.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                    _.radioPerdidaConocimiento.value,
                                onChanged: (value) {
                                  _.radioPerdidaConocimiento.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.perdidaConocimientoController))
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
                            child: Text("Problemas de conducta",
                                style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue:
                                    _.radioProblemasDeConducta.value,
                                onChanged: (value) {
                                  _.radioProblemasDeConducta.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                    _.radioProblemasDeConducta.value,
                                onChanged: (value) {
                                  _.radioProblemasDeConducta.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.problemasDeConductaController))
                          ],
                        ),
                        
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
                                groupValue:
                                    _.radioFracturasNeuroesqueletico.value,
                                onChanged: (value) {
                                  _.radioFracturasNeuroesqueletico.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                    _.radioFracturasNeuroesqueletico.value,
                                onChanged: (value) {
                                  _.radioFracturasNeuroesqueletico.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.fracturasNeuroesqueleticoController))
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
                                groupValue:
                                    _.radioAsma.value,
                                onChanged: (value) {
                                  _.radioAsma.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                    _.radioAsma.value,
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
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.asmaController))
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
                            child: Text("Infecciones recurrentes de vías aéreas superiores",
                                style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue:
                                    _.radioInfeccionesViasAreas.value,
                                onChanged: (value) {
                                  _.radioInfeccionesViasAreas.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                    _.radioInfeccionesViasAreas.value,
                                onChanged: (value) {
                                  _.radioInfeccionesViasAreas.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.infeccionesViasAereasController))
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
                            child: Text("Dificultad para respirar al caminar largas distancias", style: TextStyle(fontSize: 18))),
                         Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue:
                                    _.radioCardioPDificultadRespirarAlCaminarLargos.value,
                                onChanged: (value) {
                                  _.radioCardioPDificultadRespirarAlCaminarLargos.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                    _.radioCardioPDificultadRespirarAlCaminarLargos.value,
                                onChanged: (value) {
                                  _.radioCardioPDificultadRespirarAlCaminarLargos.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.cardioPDificultadRespirarAlCaminarLargosController))
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
                            child: Text("Dificultad para respirar al caminar pequeñas distancias", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue:
                                    _.radioCardioPDificultadRespirarAlCaminarPequenas.value,
                                onChanged: (value) {
                                  _.radioCardioPDificultadRespirarAlCaminarPequenas.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                    _.radioCardioPDificultadRespirarAlCaminarPequenas.value,
                                onChanged: (value) {
                                  _.radioCardioPDificultadRespirarAlCaminarPequenas.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.cardioPDificultadRespirarAlCaminarPequenasController))
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
                            child: Text("Cianosis (Dedos morados)", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue:
                                    _.radioCardioPCianosis.value,
                                onChanged: (value) {
                                  _.radioCardioPCianosis.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                    _.radioCardioPCianosis.value,
                                onChanged: (value) {
                                  _.radioCardioPCianosis.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.cardioPCianosis))
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
                            child: Text("Malformación cardiaca", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue:
                                    _.radioMalFormaciones.value,
                                onChanged: (value) {
                                  _.radioMalFormaciones.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                    _.radioMalFormaciones.value,
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
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.malformacionesController))
                          ],
                        ),
                        
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
                                groupValue:
                                    _.radioReflujoGastroesofagico.value,
                                onChanged: (value) {
                                  _.radioReflujoGastroesofagico.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                    _.radioReflujoGastroesofagico.value,
                                onChanged: (value) {
                                  _.radioReflujoGastroesofagico.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.reflujoGastroesofagicoController))
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
                            child: Text("Intolerancia a la proteína de la leche o a la lactosa", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue:
                                    _.radioIntoleranciaProteinaLeche.value,
                                onChanged: (value) {
                                  _.radioIntoleranciaProteinaLeche.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                    _.radioIntoleranciaProteinaLeche.value,
                                onChanged: (value) {
                                  _.radioIntoleranciaProteinaLeche.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.intoleranciaProteinaLecheController))
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
                            child: Text("Diarrea recurrente", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue:
                                    _.radioDiarreaRecurrente.value,
                                onChanged: (value) {
                                  _.radioDiarreaRecurrente.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                    _.radioDiarreaRecurrente.value,
                                onChanged: (value) {
                                  _.radioDiarreaRecurrente.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.diarreaRecurrenteController))
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
                            child: Text("Falta de incremento en el peso y la talla", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue:
                                    _.radioFaltaIncrementoPesoTalla.value,
                                onChanged: (value) {
                                  _.radioFaltaIncrementoPesoTalla.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                    _.radioFaltaIncrementoPesoTalla.value,
                                onChanged: (value) {
                                  _.radioFaltaIncrementoPesoTalla.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.faltaIncrementoPesoTallaController))
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
                            child: Text("Estreñimiento", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue:
                                    _.radioEstrenimiento.value,
                                onChanged: (value) {
                                  _.radioEstrenimiento.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                    _.radioEstrenimiento.value,
                                onChanged: (value) {
                                  _.radioEstrenimiento.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.estrenimientoController))
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
                            child: Text("Evaluaciones sanguinolentas", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue:
                                   _.radioEvaluacionesSanguinolentas.value,
                                onChanged: (value) {
                                 _.radioEvaluacionesSanguinolentas.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                   _.radioEvaluacionesSanguinolentas.value,
                                onChanged: (value) {
                                 _.radioEvaluacionesSanguinolentas.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.evaluacionesSanguinolentasController))
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
                            child: Text("Se ha detectado problemas de parasitosis intestinal", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue:
                                   _.radioProblemasParasitosisIntestinal.value,
                                onChanged: (value) {
                                 _.radioProblemasParasitosisIntestinal.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                   _.radioProblemasParasitosisIntestinal.value,
                                onChanged: (value) {
                                 _.radioProblemasParasitosisIntestinal.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.problemasDeParasitosisIntestinalController))
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
                                groupValue:
                                   _.radioInfeccionViasUrinariasRecurrentes.value,
                                onChanged: (value) {
                                 _.radioInfeccionViasUrinariasRecurrentes.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                   _.radioInfeccionViasUrinariasRecurrentes.value,
                                onChanged: (value) {
                                 _.radioInfeccionViasUrinariasRecurrentes.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.infeccionViasUrinariasRecurrentesController))
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
                            child: Text("Moja la cama por las noches (Enuresis", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue:
                                   _.radioMojaLaCamaNoches.value,
                                onChanged: (value) {
                                 _.radioMojaLaCamaNoches.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                   _.radioMojaLaCamaNoches.value,
                                onChanged: (value) {
                                 _.radioMojaLaCamaNoches.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.mojaCamaPorLasNochesController))
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
                            child: Text("Dolor al orinar", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue:
                                  _.radioDolorAlOrinar.value,
                                onChanged: (value) {
                                _.radioDolorAlOrinar.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                  _.radioDolorAlOrinar.value,
                                onChanged: (value) {
                                _.radioDolorAlOrinar.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.dolorAlOrinarController))
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
                                groupValue:
                                  _.radioPerdidaDelCabello.value,
                                onChanged: (value) {
                                _.radioPerdidaDelCabello.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                  _.radioPerdidaDelCabello.value,
                                onChanged: (value) {
                                _.radioPerdidaDelCabello.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.perdidaDelCabelloController))
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
                            child: Text("Erupciones recurrentes en la piel", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue:
                                  _.radioErupcionesRecurrentesPiel.value,
                                onChanged: (value) {
                                _.radioErupcionesRecurrentesPiel.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                  _.radioErupcionesRecurrentesPiel.value,
                                onChanged: (value) {
                                _.radioErupcionesRecurrentesPiel.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.erupcionesRecurrentesEnLaPielController))
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
                            child: Text("Piel reseca", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue:
                                  _.radioPielReseca.value,
                                onChanged: (value) {
                                _.radioPielReseca.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                  _.radioPielReseca.value,
                                onChanged: (value) {
                                _.radioPielReseca.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.pielResecaController))
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
                                groupValue:
                                  _.radioRinorreaHialinaRecurrente.value,
                                onChanged: (value) {
                                _.radioRinorreaHialinaRecurrente.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                  _.radioRinorreaHialinaRecurrente.value,
                                onChanged: (value) {
                                _.radioRinorreaHialinaRecurrente.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.rinorreHialinaRecurrentController))
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
                            child: Text("Hemorragia de la narinas recurrentes (Sangrado)", style: TextStyle(fontSize: 18))),
                        Row(
                          children: [
                            Radio(
                                value: "Si",
                                groupValue:
                                 _.radioHemorragiaNarinasRecurrentes.value,
                                onChanged: (value) {
                               _.radioHemorragiaNarinasRecurrentes.value =
                                      value.toString();
                                }),
                            Text("Si"),
                            Radio(
                                value: "No",
                                groupValue:
                                 _.radioHemorragiaNarinasRecurrentes.value,
                                onChanged: (value) {
                               _.radioHemorragiaNarinasRecurrentes.value =
                                      value.toString();
                                }),
                            Text("No"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                flex: 2,
                                child: textformfield(
                                    "Especificar",
                                    Get.width / 7,
                                    _.hemorragiaDeLaNarinasRecurrentesController))
                          ],
                        ),
                        
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
                                      _.observacionesController))
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
            ),)
          );
        });
  }
}
