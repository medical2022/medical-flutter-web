import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/navbartop.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicinesystem/app/controllers/historiaclinica_controller.dart';
import 'package:medicinesystem/app/data/models/Paciente._model.dart';
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
                      () => DropdownButton<String>(
                        value: _.select.value,
                        onChanged: (value) {
                          _.select.value = value.toString();
                        },
                        items: _.pacien.value.value
                            .map((item) => DropdownMenuItem<String>(
                                value: item.name,
                                child: Text("${item.name} ASDASD")))
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
              ],
            ),
          );
        });
  }
}
