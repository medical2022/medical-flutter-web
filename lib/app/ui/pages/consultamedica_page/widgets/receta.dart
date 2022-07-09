import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/dropdownbutton.dart';
import 'package:medicinesystem/app/components/textformfield.dart';
import 'package:medicinesystem/app/ui/pages/consultamedica_page/controllers/receta_controller.dart';
import 'package:sizer/sizer.dart';

class RecetaView extends StatelessWidget {
  const RecetaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController medicamentocontroller = TextEditingController();
    TextEditingController dosiscontroller = TextEditingController();
    TextEditingController frecuenciacontroller = TextEditingController();
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
                    "Receta",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  textformfield(
                      "Medicamento", Get.width / 4, medicamentocontroller),
                  SizedBox(width: 10,),
                  textformfield("Dosis", Get.width / 9, dosiscontroller),
                  SizedBox(width: 10,),
                  textformfield(
                      "Frecuencia", Get.width / 9, frecuenciacontroller),
                      SizedBox(width: 10,),
                  textformfield("Duración", Get.width / 9, duracioncontroller),
                  SizedBox(width: 10,),
                 Expanded(child:  Obx(() => dropdownbuttonW(_.listvia, _.pickvia,22.w)))
                ],
              ),
              SizedBox(width: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(onPressed: (){

                  }, child: Text("Alta medicamento")),
                  SizedBox(width: 10,),
                   ElevatedButton(onPressed: (){

                  }, child: Text("Agregar a receta"))
                ],
              ),
SizedBox(height: 20,),
              Container(
              margin: EdgeInsets.only(bottom: 32),
              width: Get.width,
              child: DataTable(
                columns: <DataColumn>[
                  DataColumn(label: Text("NOMBRE")),
                  DataColumn(label: Text("DOSIS")),
                  DataColumn(label: Text("FRECUENCIA")),
                  DataColumn(label: Text("DURACIÓN")),
                   DataColumn(label: Text("VÍA")),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("sdadasdsd ")),
                    DataCell(Text("JSQ00001-202")),
                    DataCell(Text("1231231231")),
                    DataCell(Text("1231231231")),
                    DataCell(Text("1231231231")),
                   
                  ]),
                  
                ],
              )),
              SizedBox(width: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textformfield("Observaciones", Get.width/7, observacionescontroller),
                  ElevatedButton(onPressed: (){

                  }, child: Text("Recetas anteriores")),
                ],
              )
            ],
          );  
        });
  }
}
