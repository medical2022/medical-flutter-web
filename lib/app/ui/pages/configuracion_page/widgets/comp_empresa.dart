import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/textformfield.dart';
import 'package:medicinesystem/app/controllers/configuracion_controller.dart';
import 'package:sizer/sizer.dart';

class CompEmpresa extends StatelessWidget {
  const CompEmpresa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var con = Get.put(ConfiguracionController());
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Empresa",
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
                    child: Text("Color del sitio",
                        style: TextStyle(fontSize: 18))),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: textformfield(
                            "Especificar", Get.width / 7, con.textController))
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
                    child: Text("Logotipo(Para el sitio web)",
                        style: TextStyle(fontSize: 18))),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: textformfield(
                            "Especificar", Get.width / 7, con.textController)),
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
                    child: Text("Uso CFDI", style: TextStyle(fontSize: 18))),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: textformfield(
                            "Especificar", Get.width / 7, con.textController)),
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
                    child: Text("Forma de pago predeterminada",
                        style: TextStyle(fontSize: 18))),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: textformfield(
                            "Especificar", Get.width / 7, con.textController))
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
                    child: Text("Producto/servicio predeterminado",
                        style: TextStyle(fontSize: 18))),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: textformfield(
                            "Especificar", Get.width / 7, con.textController)),
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
        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(onPressed: (){
        
          }, child: Text("Guardar")),
        )
      ],
    );
  }
}
