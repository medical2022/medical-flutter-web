import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/navbartop.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicinesystem/app/controllers/pacientes_controller.dart';
import 'package:medicinesystem/app/data/models/Paciente._model.dart';
import 'package:medicinesystem/app/routes/app_pages.dart';
import 'package:medicinesystem/app/ui/pages/pacientes_page/widgets/formaltapaciente.dart';

class Desktopbody extends StatelessWidget {
  const Desktopbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController con = ScrollController();
    return Navbartop(
        widget: GetBuilder<PacientesController>(
            init: PacientesController(),
            builder: (_) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.toNamed(Routes.PACIENTES + Routes.ALTAPACIENTE,
                                arguments: {"opcion": 1});
                          },
                          icon: FaIcon(FontAwesomeIcons.plus)),
                      Text("Alta paciente")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Paciente",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Container(
                        width: Get.width / 6,
                        height: 40,
                        child: TextFormField(
                          controller: _.controllerSearch,
                          onChanged: (value) {
                            _.searchPacientes(value);
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
                    controller: con,
                    child: SingleChildScrollView(
                      controller: con,
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
                                          label: Text("# DE EXPEDIENTE",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall)),
                                      DataColumn(
                                          label: Text("TELÉFONO",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall)),
                                      DataColumn(
                                          label: Text("DIRECCIÓN",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall)),
                                      DataColumn(
                                          label: Text("ACCIONES",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall)),
                                    ],
                                    rows: _.buildDatarows(
                                        
                                        Theme.of(context)
                                            .textTheme
                                            .labelSmall!),
                                 ))
                            
                          )),
                    
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    
                  )
                ],
              );
            }));
  }
}

// StreamBuilder(
//                             stream: _.fire,
//                             builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
//                               if (!snapshot.hasData) {
//                                 return LinearProgressIndicator();
//                               } else {
//                                 List<DataRow> datarow = snapshot.data!.docs.map((doc){
//                                    return DataRow(cells: [
//                                       DataCell(Text("${doc["name"]}"))
//                                     ]);
//                                 }).toList();
                                
//                                 return DataTable(
//                                     columns: <DataColumn>[
//                                       DataColumn(
//                                           label: Text("PACIENTE",
//                                               style: Theme.of(context)
//                                                   .textTheme
//                                                   .headlineSmall)),
                                      
//                                     ],
//                                     rows: datarow);
//                               }
//                             },
//                           )