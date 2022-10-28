import 'dart:math';

import 'package:date_time_picker/date_time_picker.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:medicinesystem/app/controllers/calculadora_controller.dart';
import 'package:sizer/sizer.dart';

class CompImc extends GetView<CalculadoraController> {
  const CompImc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget escalaOption(bool valid, Color wcolor, String text) {
      return Opacity(
        opacity: valid == false ? 0.4 : 1,
        child: Row(
          children: [
            Container(
              width: 12,
              height: 12,
              color: wcolor,
              margin: EdgeInsets.only(right: 10),
            ),
            Text(text)
          ],
        ),
      );
    }

    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "INDICE DE MASA CORPORAL",
              style: Theme.of(context).textTheme.titleLarge,
            )),
        SizedBox(height: 3.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 20.w,
              height: 40,
              child: TextField(
                controller: controller.tfPeso,
                decoration: InputDecoration(hintText: "Peso (en kg)"),
              ),
            ),
            SizedBox(
              width: 3.w,
            ),
            SizedBox(
              width: 20.w,
              height: 40,
              child: TextField(
                controller: controller.tfEstatura,
                decoration: InputDecoration(hintText: "Estatura(en cm)"),
              ),
            ),
            SizedBox(
              width: 3.w,
            ),
            SizedBox(
              width: 20.w,
              height: 40,
              child: DateTimePicker(
                type: DateTimePickerType.date,
                initialDatePickerMode: DatePickerMode.year,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.date_range),
                    hintText: "Fecha de nacimiento (dd/mm/aaaa)"),
                firstDate: DateTime(2015),
                lastDate: DateTime(2025),
                onChanged: ((value) {
                  // print(DateTime.now());
                  controller.diaUltimoPeriodo = DateTime.parse(value);

                  // print(DateTime.parse(value));
                  // Duration diference =
                  //     DateTime.now().difference(DateTime.parse(value));
                  // if (diference.inDays > 7) {
                  //   controller.weeks.value =
                  //       "${(diference.inDays / 7).toStringAsFixed(0)}";
                  // }
                  // DateTime data = ultimaregla.add(Duration(days: 240));
                  // controller.dateProbable.value =
                  //     DateFormat("yyyy-MM-dd").format(data);
                }),
              ),
            ),
          ],
        ),
        SizedBox(height: 3.h),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Genero",
              style: TextStyle(fontSize: 18),
            )),
        SizedBox(height: 3.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() => DropdownButton2(
                          dropdownWidth: 20.w,
                          buttonWidth: 20.w,
                          value: controller.selectGender.value,
                          onChanged: (value) {
                            controller.selectGender.value = value.toString();
                          },
                          hint: Text("Seleccione"),
                          items: [
                            DropdownMenuItem(
                                value: "Femenino", child: Text("Femenino")),
                            DropdownMenuItem(
                                value: "Masculino", child: Text("Masculino"))
                          ])),
                  ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(minimumSize: Size(8.w, 6.h)),
                      onPressed: () {
                        controller.kisUnderWeight.value = false;
                        var result = pow(
                            (double.parse(controller.tfEstatura.text) / 100),
                            2);
                        controller.imc.value = result.toStringAsFixed(2);
                      },
                      child: Text("Calcular"))
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 3.h),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Resultados",
                      style: TextStyle(fontSize: 18),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("IMC"),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(10),
                      width: 20.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey)),
                      child: Obx(() => Text(controller.imc.value)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: 5.w),
            Obx(() => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Escalas menor de edad"),
                    Wrap(
                      children: [
                        escalaOption(controller.kisUnderWeight.value,
                            Colors.yellow, "Bajo peso"),
                        SizedBox(
                          width: 2.w,
                        ),
                        escalaOption(controller.kisNormalWeight.value,
                            Colors.green, "Normal"),
                        SizedBox(
                          width: 2.w,
                        ),
                         escalaOption(controller.kisNormalWeight.value,
                            Colors.orange, "Sobrepeso"),
                        SizedBox(
                          width: 2.w,
                        ),
                         escalaOption(controller.kisNormalWeight.value,
                            Colors.red, "Obesidad"),
                        SizedBox(
                          width: 2.w,
                        ),
                       escalaOption(controller.kisNormalWeight.value,
                            Colors.red, "Obesidad"),
                        SizedBox(
                          width: 2.w,
                        ),
                       
                    Text("Escalas mayor de edad"),
                    Wrap(
                      children: [
                        
                         escalaOption(controller.kisUnderWeight.value,
                            Colors.yellow, "Bajo peso"),
                        SizedBox(
                          width: 2.w,
                        ),
                        escalaOption(controller.kisNormalWeight.value,
                            Colors.greenAccent, "Normal"),
                        SizedBox(
                          width: 2.w,
                        ),
                         escalaOption(controller.kisUnderWeight.value,
                            Colors.orange, "Sobrepeso"),
                        SizedBox(
                          width: 2.w,
                        ),
                        escalaOption(controller.kisObesity.value,
                            Colors.red, "Obesidad"),
                        SizedBox(
                          width: 2.w,
                        ),
                        escalaOption(controller.kisObesity2.value,
                            Colors.red, "Obesidad ||"),
                        SizedBox(
                          width: 2.w,
                        ),
                        escalaOption(controller.kisObesity3.value,
                            Colors.red, "Obesidad |||"),
                        SizedBox(
                          width: 2.w,
                        ),
                        
                      ],
                    )
                  ],
                )])
        )],
        )
      ],
    );
  }
}
