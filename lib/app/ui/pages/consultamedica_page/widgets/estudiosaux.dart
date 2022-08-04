import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/controllers/consultamedica_controller.dart';

class EstudiosauxView extends StatelessWidget {
  const EstudiosauxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var con = Get.put(ConsultamedicaController());
    return Column(
      children: [
        Divider(height: 10,),
        Align(
                  alignment: Alignment.centerLeft,
                  child: 
                   Text(
                    "Estudiios Auxiliares o de diagnóstico",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),),
                SizedBox(
                height: 20,
              ),
        TextFormField(
          maxLines: 20,
          controller: con.estudiosAuxiliaresController,
          decoration:InputDecoration(
            
            
            border: OutlineInputBorder()
          )
        ),
        SizedBox(height:20),
        Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(onPressed: (){}, child: Text("Adjuntar archivo"))),
        Container(
          height: 100,
          padding: EdgeInsets.all(20),
          width: double.infinity,
          color: Colors.grey.withOpacity(0.2),
          child: Text("Documento"),)
      ],
    );
  }
}