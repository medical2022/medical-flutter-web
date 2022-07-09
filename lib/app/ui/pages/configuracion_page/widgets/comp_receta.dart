import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/dropdownbutton.dart';
import 'package:medicinesystem/app/components/textformfield.dart';
import 'package:medicinesystem/app/controllers/configuracion_controller.dart';
import 'package:sizer/sizer.dart';

class CompReceta extends StatelessWidget {
  const CompReceta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var con = Get.put(ConfiguracionController());
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Receta",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Row(
              children: [],
            )
          ],
        ),
        
        SizedBox(
          height: 2.h,
        ),
        Row(
          children: [
           Expanded(
                flex: 1,
                child: Column(children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Alineación",
                        style: TextStyle(fontSize: 18))),
                  Obx(() =>
                    dropdownbuttonW(con.alineacion, con.pickAlineacion, Get.width))
                ],)),
            SizedBox(
              width: 20,
            ),
            Expanded(
                flex: 1,
                child: Column(children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Encabezado",
                        style: TextStyle(fontSize: 18))),
                  Obx(() =>
                    dropdownbuttonW(con.encabezado, con.pickEncabezado, Get.width))
                ],)),
              SizedBox(
              width: 20,
            ),
            Expanded(
                flex: 1,
                child: Column(children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Tipo de hoja",
                        style: TextStyle(fontSize: 18))),
                  Obx(() =>
                    dropdownbuttonW(con.typeSheet, con.pickTypeSheet, Get.width))
                ],)),
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
                    child: Text("Margen izquierdo",
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
                    child:
                        Text("Margen derecho", style: TextStyle(fontSize: 18))),
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
            SizedBox(
              width: 20,
            ),
            Expanded(
                child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child:
                        Text("Margen superior", style: TextStyle(fontSize: 18))),
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
                    child: Text("Margen inferior",
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
      ],
    );
  }
}
