import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/textformfield.dart';
import 'package:medicinesystem/app/controllers/consultamedica_controller.dart';

class DiagnosticoView extends StatelessWidget {
  const DiagnosticoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController diagnosticocontrolller = new TextEditingController();
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
                  "Diagnóstico",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
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
                    textformfield("Buscar diagnóstico", Get.width / 2,
                        diagnosticocontrolller)
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 32),
                  width: Get.width,
                  child: Obx(() => DataTable(
                        columns: <DataColumn>[
                          DataColumn(label: Text("Clave")),
                          DataColumn(label: Text("Diagnóstico")),
                          DataColumn(label: Text("")),
                        ],
                        rows: _.buildDatarowsDiagnostico(
                            Theme.of(context).textTheme.labelSmall!),
                      ))),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (c) => AlertDialog(
                              title: Text("Nuevo diagnóstico"),
                              content: TextFormField(
                                controller: _.controllerDiagnostico,
                                maxLines: 10,
                              ),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      _.saveDiagnostico();
                                    },
                                    child: Text("Añadir")),
                                ElevatedButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    child: Text("Cancelar")),
                              ],
                            ));
                  },
                  child: Text("Agregar nuevo"))
            ],
          );
        });
  }
}
