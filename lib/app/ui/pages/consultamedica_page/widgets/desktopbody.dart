import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/navbartop.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicinesystem/app/controllers/consultamedica_controller.dart';
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

class Desktopbody extends StatelessWidget {
  const Desktopbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController con = ScrollController();
    return Navbartop(
        widget: GetBuilder<ConsultamedicaController>(
      init: ConsultamedicaController(),
      builder: (_) {
        return Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [Icon(Icons.edit), Text("Úlitma consulta")],
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
                  children: [Icon(Icons.list_alt), Text("Historial Clínico")],
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
                  children: [Icon(Icons.book_outlined), Text("Cartilla")],
                ),
                SizedBox(
                  width: 10,
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.CALCULADORA);
                  },
                  child: Row(
                    children: [Icon(Icons.calculate), Text("Calculadora")],
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
                Row(
                  children: [
                    Text(
                      "Paciente : ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("${_.args["paciente"].name}"),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Edad : ",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("${_.args["paciente"].date}"),
                  ],
                ),
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
            SingleChildScrollView(
                primary: _.selectpage == 1,
                child: Column(
                  children: [
                    TabBar(
                        controller: _.tabController,
                        isScrollable: true,
                        indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(color: Colors.blue,width: 2),
                          
                        ),
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
                      child: TabBarView(controller: _.tabController, children: [
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
              ),
          
          ],
        );
      },
    ));
  }
}
