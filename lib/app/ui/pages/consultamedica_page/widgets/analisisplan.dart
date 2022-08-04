import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/controllers/consultamedica_controller.dart';

class AnalisisplanView extends StatelessWidget {
  const AnalisisplanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var con = Get.put(ConsultamedicaController());
    return Column(
      children: [
        Divider(height: 10,),
        Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Análisis y plan",
                    style: Theme.of(context).textTheme.titleLarge,
                  )),
          SizedBox(
                height: 20,
              ),
        TextFormField(
          maxLines: 20,
          controller: con.analisisController,
          decoration:InputDecoration(
            
            
            border: OutlineInputBorder()
          )
        )
      ],
    );
  }
}