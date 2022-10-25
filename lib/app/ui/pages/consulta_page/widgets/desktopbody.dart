import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/navbartop.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicinesystem/app/controllers/consulta_controller.dart';
import 'package:medicinesystem/app/controllers/consultamedica_controller.dart';
import 'package:medicinesystem/app/data/models/ConsultaMedica_model.dart';
import 'package:medicinesystem/app/routes/app_pages.dart';
import 'package:sizer/sizer.dart';

class Desktopbody extends StatelessWidget {
  const Desktopbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController conS = ScrollController();
    var con = Get.put(ConsultaController());
    return Navbartop(
      widget: Column(
        children: [
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Consulta Médica",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Container(
                width: Get.width / 6,
                height: 40,
                child: TextFormField(
                  onChanged: (value) {
                    con.searchConsultaMedica(value);
                  },
                  decoration: InputDecoration(
                      labelText: "Buscar paciente..",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder()),
                ),
              )
            ],
          ),
          Scrollbar(
                    scrollbarOrientation: ScrollbarOrientation.top,
                    controller: conS,
                    child: SingleChildScrollView(
                      controller: conS,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Container(
                          margin: EdgeInsets.only(bottom: 32),
                          width: Get.width,
                          child: 
                                 Obx(()=> DataTable(
                                    columns: <DataColumn>[
                                      DataColumn(
                                          label: Text("PACIENTE",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall)),
                                      DataColumn(
                                          label: Text("Evolución",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall)),
                                      DataColumn(
                                          label: Text("Fecha de creación",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall)),
                                      
                                      DataColumn(
                                          label: Text("ACCIONES",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall)),
                                    ],
                                    rows: con.buildDatarows(
                                        
                                        Theme.of(context)
                                            .textTheme
                                            .labelSmall!),
                                 ))
                            
                          )),
                    
                  ),
          Container(
              margin: EdgeInsets.only(bottom: 32),
              width: Get.width,
              ),
        ],
      ),
    );
  }
}
