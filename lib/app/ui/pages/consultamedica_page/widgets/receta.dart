import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/dropdownbutton.dart';
import 'package:medicinesystem/app/components/textformfield.dart';
import 'package:medicinesystem/app/controllers/consultamedica_controller.dart';
import 'package:medicinesystem/app/ui/pages/consultamedica_page/controllers/receta_controller.dart';
import 'package:sizer/sizer.dart';

class RecetaView extends StatelessWidget {
  const RecetaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> datas = ["joel", "carla", "daniel"];
    var con = Get.put(ConsultamedicaController());
    return GetBuilder<ConsultamedicaController>(
        init: ConsultamedicaController(),
        builder: (_) {
          return Column(
            children: [
              Divider(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Receta",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: Get.width / 9,
                    child: Autocomplete(fieldViewBuilder:
                        (context, controller, focusNode, onEditingComplete) {
                      return TextFormField(
                        validator: (value) {
                          return value!.isEmpty ? "Debe llenar el campo" : null;
                        },
                        decoration: InputDecoration(
                          labelText: "Medicamento",
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value) {
                          con.medicamentoController.text = value;
                        },
                        onSaved: (value) {
                          con.medicamentoController.text = value!;
                        },
                        controller: controller,
                        focusNode: focusNode,
                        onEditingComplete: onEditingComplete,
                      );
                    }, onSelected: (option) {
                      _.selectAutocomplete(option);
                      print(option);
                    }, optionsBuilder: (TextEditingValue textEditingValue) {
                      if (textEditingValue.text.isEmpty) {
                        return List<String>.empty();
                      } else {
                        return con.listMedicamento.where((element) => element
                            .toLowerCase()
                            .contains(textEditingValue.text.toLowerCase()));
                      }
                    }),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  textformfield("Dosis", Get.width / 9, con.dosisController),
                  SizedBox(
                    width: 10,
                  ),
                  textformfield(
                      "Frecuencia", Get.width / 9, con.frecuenciaController),
                  SizedBox(
                    width: 10,
                  ),
                  textformfield(
                      "Duración", Get.width / 9, con.duracionController),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Obx(
                          () => dropdownbuttonW(_.listvia, _.pickvia, 22.w)))
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        con.saveAltaMedicamento();
                      },
                      child: Text("Alta medicamento")),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        con.saveReceta();
                      },
                      child: Text("Agregar a receta"))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 32),
                  width: Get.width,
                  child: Obx(() => DataTable(
                        columns: <DataColumn>[
                          DataColumn(label: Text("NOMBRE")),
                          DataColumn(label: Text("DOSIS")),
                          DataColumn(label: Text("FRECUENCIA")),
                          DataColumn(label: Text("DURACIÓN")),
                          DataColumn(label: Text("VÍA")),
                          DataColumn(label: Text("")),
                        ],
                        rows: _.buildDatarows(
                            Theme.of(context).textTheme.labelSmall!),
                      ))),
              SizedBox(
                height: 20,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     textformfield("Observaciones", Get.width / 7,
              //         con.observacionesController),
              //     ElevatedButton(
              //         onPressed: () {}, child: Text("Recetas anteriores")),
              //   ],
              // )
            ],
          );
        });
  }
}
