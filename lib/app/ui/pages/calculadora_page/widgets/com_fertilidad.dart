import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:medicinesystem/app/controllers/calculadora_controller.dart';
import 'package:sizer/sizer.dart';

class CompFertilidad extends GetView<CalculadoraController> {
  const CompFertilidad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Fecha Probable de Parto",
              style: Theme.of(context).textTheme.titleLarge,
            )),
        SizedBox(height: 3.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                      height: 50,
                      child: TextField(
                        controller: controller.tfDurationCicloMenstrual,
                        decoration: InputDecoration(
                            hintText:
                                "Duración del ciclo menstrual(21 a 36 días)"),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    SizedBox(
                      width: 20.w,
                      height: 50,
                      child: DateTimePicker(
                        type: DateTimePickerType.date,
                        initialDatePickerMode: DatePickerMode.year,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.date_range),
                            hintText: "Primer día del último periodo"),
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
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  DateTime da = controller.diaUltimoPeriodo!.add(Duration(
                      days:
                          int.parse(controller.tfDurationCicloMenstrual.text) -
                              14));
                  controller.dateFertilidad.value = DateFormat("yyyy-MM-dd").format(da);
                },
                child: Text("Calcular"))
          ],
        ),
        SizedBox(height: 3.h),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Resultados",
              style: TextStyle(fontSize: 18),
            )),
        SizedBox(height: 3.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              Text("Fertilidad(aaaa-mm-dd"),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 16.w,
                padding: EdgeInsets.all(10),
                height: 4.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)),
                child: Obx(() => Text(controller.dateFertilidad.value)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
