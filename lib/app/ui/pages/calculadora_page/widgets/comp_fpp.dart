import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:medicinesystem/app/controllers/calculadora_controller.dart';
import 'package:sizer/sizer.dart';

class CompFpp extends GetView<CalculadoraController> {
  const CompFpp({Key? key}) : super(key: key);

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
                SizedBox(
                  width: 20.w,
                  height: 50,
                  child: DateTimePicker(
                    type: DateTimePickerType.date,
                    initialDatePickerMode: DatePickerMode.year,
                    decoration: InputDecoration(
                        labelText: "Fecha de ultima regla",
                        prefixIcon: Icon(Icons.date_range),
                        hintText: "Fecha"),
                    firstDate: DateTime(2015),
                    lastDate: DateTime(2025),
                    onChanged: ((value) {
                      print(DateTime.now());
                      DateTime ultimaregla = DateTime.parse(value);

                      print(DateTime.parse(value));
                      Duration diference =
                          DateTime.now().difference(DateTime.parse(value));
                      if (diference.inDays > 7) {
                        controller.weeks.value =
                            "${(diference.inDays / 7).toStringAsFixed(0)}";
                      }
                      DateTime data = ultimaregla.add(Duration(days: 240));
                      controller.dateProbable.value =
                          DateFormat("yyyy-MM-dd").format(data);
                      
                    }),
                  ),
                ),
              ],
            ),
            ElevatedButton(onPressed: () {
              
            }, child: Text("Calcular"))
          ],
        ),
        SizedBox(height: 3.h),
        Align(alignment: Alignment.centerLeft, child: Text("Resultados",style: TextStyle(fontSize: 18),)),
                SizedBox(height: 3.h),
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Fecha probable de parto(dd/mm/aaaa)"),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 16.w,
                  padding: EdgeInsets.all(10),
                  height: 4.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey)),
                  child: Obx(()=> Text(controller.dateProbable.value)),
                )
              ],
            ),
            SizedBox(
              width: 4.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Tiempo de embarazo (en semanas)"),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(10),
                  width: 16.w,
                  height: 4.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey)),
                  child: Obx(() => Text(controller.weeks.value)),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
