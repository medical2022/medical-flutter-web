import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/dropdownbutton.dart';
import 'package:medicinesystem/app/components/textformfield.dart';
import 'package:medicinesystem/app/ui/pages/consultamedica_page/controllers/receta_controller.dart';
import 'package:sizer/sizer.dart';
class InterconsultaView extends StatelessWidget {
  const InterconsultaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController medicocontroller = TextEditingController();
    TextEditingController especialidadcontroller = TextEditingController();
    TextEditingController motivointerconsultacontroller = TextEditingController();
    TextEditingController duracioncontroller = TextEditingController();
    TextEditingController observacionescontroller = TextEditingController();
    return GetBuilder<RecetaController>(
        init: RecetaController(),
        builder: (_) {
          return Column(
            children: [
              Divider(
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child:  Text(
                    "Evolución y padecimiento",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  textformfield(
                      "Médico", Get.width / 4, medicocontroller),
                  SizedBox(width: 10,),
                  textformfield("Especialidad", Get.width / 4, especialidadcontroller),
                  SizedBox(width: 10,),
                  textformfield(
                      "Motivo de interconsulta", Get.width / 4, motivointerconsultacontroller),
                      SizedBox(width: 10,),
                  
                
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(onPressed: (){

                  }, child: Text("Alta medicamento")),
                  
                  
                ],
              ),
SizedBox(height: 20,),
              Container(
              margin: EdgeInsets.only(bottom: 32),
              width: Get.width,
              child: DataTable(
                columns: <DataColumn>[
                  DataColumn(label: Text("MÉDICO")),
                  DataColumn(label: Text("ESPECIALIDAD")),
                  DataColumn(label: Text("MOTIVO")),
                  
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("sdadasdsd ")),
                    DataCell(Text("JSQ00001-202")),
                    DataCell(Text("1231231231")),
                 
                   
                  ]),
                  
                ],
              )),
              
            ],
          );  
        });
  }
}
