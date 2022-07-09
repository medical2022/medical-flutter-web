import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/textformfield.dart';

class DiagnosticoView extends StatelessWidget {
  const DiagnosticoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController diagnosticocontrolller = new TextEditingController();
    return Column(
      children: [
        Divider(height: 10,),
        Align(
                  alignment: Alignment.centerLeft,
                  child:  Text(
                    "Diagnóstico",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),),
                SizedBox(
                height: 20,
              ),
        
        Container(
          height: 100,
          padding: EdgeInsets.all(20),
          width: double.infinity,
          color: Colors.blue.withOpacity(0.1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Clave : "),
              Text("Diagnostico : "),
              textformfield("Buscar diagnóstico", Get.width/2, diagnosticocontrolller)
            ],
          ),
          
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){

          }, child: Text("Agregar nuevo"))
      ],
    );
  }
}