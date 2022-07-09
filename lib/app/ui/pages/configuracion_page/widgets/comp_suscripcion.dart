import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/textformfield.dart';
import 'package:medicinesystem/app/controllers/configuracion_controller.dart';
import 'package:sizer/sizer.dart';

class CompSuscripcion extends StatelessWidget {
  const CompSuscripcion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var con = Get.put(ConfiguracionController());
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Información de suscripción",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Row(
              children: [],
            )
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
                    child: Text("Tipo de suscripción",
                        style: TextStyle(fontSize: 18))),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: textformfield(
                            "Especificar", 7.w, con.textController))
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
                    child: Text("Días restantes",
                        style: TextStyle(fontSize: 18))),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: textformfield(
                            "Especificar", 7.w, con.textController)),
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
                    child: Text("Fecha de inicio",
                        style: TextStyle(fontSize: 18))),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: textformfield(
                            "Especificar", 7.w, con.textController))
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
                    child: Text("Fecha de finalización",
                        style: TextStyle(fontSize: 18))),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: textformfield(
                            "Especificar", 7.w, con.textController)),
                  ],
                )
              ],
            )),
           
          ],
        ),
        SizedBox(height: 2.h,),
      ],
    );
  }
}