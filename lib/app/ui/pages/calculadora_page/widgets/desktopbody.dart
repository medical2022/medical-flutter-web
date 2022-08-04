import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/navbartop.dart';
import 'package:medicinesystem/app/controllers/calculadora_controller.dart';
import 'package:medicinesystem/app/ui/pages/calculadora_page/widgets/com_fertilidad.dart';
import 'package:medicinesystem/app/ui/pages/calculadora_page/widgets/comp_dosis_medicamentos.dart';
import 'package:medicinesystem/app/ui/pages/calculadora_page/widgets/comp_fpp.dart';
import 'package:medicinesystem/app/ui/pages/calculadora_page/widgets/comp_grasa.dart';
import 'package:medicinesystem/app/ui/pages/calculadora_page/widgets/comp_imc.dart';
import 'package:medicinesystem/app/ui/pages/calculadora_page/widgets/comp_peso_ideal.dart';



class DesktopBody extends GetView<CalculadoraController> {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navbartop(
            widget: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Calculadora médica",
                      style: Theme.of(context).textTheme.titleLarge,
                    )),
               
                Column(
                  children: [
                    TabBar(
                        controller: controller.tabController,
                        isScrollable: true,
                        labelColor: Colors.black,
                        tabs: [
                          Tab(
                            text: "FPP",
                          ),
                          Tab(
                            text: "Fertilidad",
                          ),
                          Tab(
                            text: "IMC",
                          ),
                          Tab(
                            text: "PESO IDEAL",
                          ),
                          Tab(
                            text: "GRASA",
                          ),
                          Tab(
                            text: "DOSIS DE MEDICAMENTOS",
                          ),
                        ]),
                    Container(
                      height: Get.height,
                      width: Get.width,
                      child: TabBarView(controller: controller.tabController, children: [
                        CompFpp(),
                        CompFertilidad(),
                        CompImc(),
                        CompPesoIdeal(),
                        CompGrasa(),
                        CompDosisMedicamentos()
                      ]),
                    )
                  ],
                ),
              ],
            ),
          );
  }
}