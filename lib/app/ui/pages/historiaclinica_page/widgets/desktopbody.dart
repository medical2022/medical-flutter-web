import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/navbartop.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicinesystem/app/controllers/consultamedica_controller.dart';
import 'package:medicinesystem/app/controllers/historiaclinica_controller.dart';
import 'package:medicinesystem/app/data/models/Paciente._model.dart';
import 'package:medicinesystem/app/routes/app_pages.dart';
import 'package:medicinesystem/app/ui/pages/consultamedica_page/widgets/analisisplan.dart';
import 'package:medicinesystem/app/ui/pages/consultamedica_page/widgets/diagnostico.dart';
import 'package:medicinesystem/app/ui/pages/consultamedica_page/widgets/estudiosaux.dart';
import 'package:medicinesystem/app/ui/pages/consultamedica_page/widgets/evolucion.dart';
import 'package:medicinesystem/app/ui/pages/consultamedica_page/widgets/exploracionfisica.dart';
import 'package:medicinesystem/app/ui/pages/consultamedica_page/widgets/interconsulta.dart';
import 'package:medicinesystem/app/ui/pages/consultamedica_page/widgets/pronostico.dart';
import 'package:medicinesystem/app/ui/pages/consultamedica_page/widgets/receta.dart';
import 'package:medicinesystem/app/ui/pages/consultamedica_page/widgets/signosvitales.dart';
import 'package:medicinesystem/app/ui/pages/consultamedica_page/widgets/solicitudes.dart';
import 'package:medicinesystem/app/ui/pages/historiaclinica_page/widgets/comp_ant_aparatossistemas.dart';
import 'package:medicinesystem/app/ui/pages/historiaclinica_page/widgets/comp_ant_heredofamiliares.dart';
import 'package:medicinesystem/app/ui/pages/historiaclinica_page/widgets/comp_ant_nopatologicos.dart';
import 'package:medicinesystem/app/ui/pages/historiaclinica_page/widgets/comp_ant_patologicos.dart';
import 'package:medicinesystem/app/ui/pages/historiaclinica_page/widgets/comp_ant_perinatales.dart';
import 'package:medicinesystem/app/ui/pages/historiaclinica_page/widgets/comp_ant_terminar.dart';

class Desktopbody extends StatelessWidget {
  const Desktopbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> items = ["Joel", "Alexander"];
    final conConsulta = Get.put(ConsultamedicaController());
    return GetBuilder<HistoriaclinicaController>(
        init: HistoriaclinicaController(),
        builder: (_) {
          return Navbartop(
            widget: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Consulta historia clinica",
                      style: Theme.of(context).textTheme.titleLarge,
                    )),
                Row(
                  children: [
                    Text("Paciente: "),
                    Container(
                        child: Obx(
                      () => DropdownButton<Paciente>(
                        value: _.select.value,
                        onChanged: (value) {
                          _.select.value = value!;
                          _.setData();
                          print(_.select.value);
                        },
                        items: _.pacien.value.value
                            .map((item) => DropdownMenuItem<Paciente>(
                                value: item, child: Text("${item.name} ")))
                            .toList(),
                      ),
                    )),
                    SizedBox(
                      width: Get.width / 17,
                    ),
                    Text("Médico: "),
                    Text("No se ha seleccionado")
                  ],
                ),
                Column(
                  children: [
                    TabBar(
                        controller: _.tabController,
                        isScrollable: true,
                        labelColor: Colors.black,
                        tabs: [
                          Tab(
                            text: "Antecedentes Heredofamiliares",
                          ),
                          Tab(
                            text: "Antecedentes Personales no patológicos",
                          ),
                          Tab(
                            text: "Antecedentes personales patológicos",
                          ),
                          Tab(
                            text: "Antecedentes perinatales",
                          ),
                          Tab(
                            text: "Aparatos y sistemas",
                          ),
                          Tab(
                            text: "Terminar",
                          ),
                        ]),
                    Container(
                      height: Get.height,
                      width: Get.width,
                      child: TabBarView(controller: _.tabController, children: [
                        HeredofamiliaresView(),
                        NoPatologicosView(),
                        PatologicosView(),
                        PerinatalesView(),
                        AparatossistemasView(),
                        TerminarView()
                      ]),
                    )
                  ],
                ),
                Obx(()=> _.isFirst.value == true
                    ? Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.edit),
                                  Text("Úlitma consulta")
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: [Icon(Icons.image), Text("Imagenes")],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.list_alt),
                                  Text("Historial Clínico")
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.settings_applications_outlined),
                                  Text("Liga PLM")
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.book_outlined),
                                  Text("Cartilla")
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              TextButton(
                                onPressed: () {
                                  Get.toNamed(Routes.CALCULADORA);
                                },
                                child: Row(
                                  children: [
                                    Icon(Icons.calculate),
                                    Text("Calculadora")
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Consulta Médica"),
                              Container(
                                width: Get.width / 6,
                                height: 40,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      labelText: "Buscar paciente..",
                                      prefixIcon: Icon(Icons.search),
                                      border: OutlineInputBorder()),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Obx(()=> Row(
                                children: [
                                  Text(
                                    "Paciente : ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("${_.select.value.name ?? 'No hay' }" ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Edad : ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text("asdasd"),
                                ],
                              ),),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.save),
                                      Text("Terminar y Guardar"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.cloud),
                                      Text("Descargar"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.send),
                                      Text("Enviar")
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              TabBar(
                                  controller: conConsulta.tabController,
                                  isScrollable: true,
                                  labelColor: Colors.black,
                                  tabs: [
                                    Tab(
                                      text: "Evolución",
                                    ),
                                    Tab(
                                      text: "Signos Vitales",
                                    ),
                                    Tab(
                                      text: "Exploración Física",
                                    ),
                                    Tab(
                                      text: "Estudios Aux",
                                    ),
                                    Tab(
                                      text: "Diagnóstico",
                                    ),
                                    Tab(
                                      text: "Análisis y Plan",
                                    ),
                                    Tab(
                                      text: "Pronóstico",
                                    ),
                                    Tab(
                                      text: "Solicitudes",
                                    ),
                                    Tab(
                                      text: "Receta",
                                    ),
                                    Tab(
                                      text: "Interconsulta",
                                    ),
                                    Tab(
                                      text: "Gráficas",
                                    ),
                                  ]),
                              Container(
                                height: Get.height,
                                width: Get.width,
                                child: TabBarView(
                                    controller: conConsulta.tabController,
                                    children: [
                                      EvolucionView(),
                                      SignosvitalesView(),
                                      ExploracionfisicaView(),
                                      EstudiosauxView(),
                                      DiagnosticoView(),
                                      AnalisisplanView(),
                                      PronosticoView(),
                                      SolicitudesView(),
                                      RecetaView(),
                                      InterconsultaView(),
                                     Text("ASDASDASWWWWWWWWWWWWWWWWWWW"),
                                    ]),
                              )
                            ],
                          ),
                        ],
                      )
                    : Container())
              ],
            ),
          );
        });
  }
}
