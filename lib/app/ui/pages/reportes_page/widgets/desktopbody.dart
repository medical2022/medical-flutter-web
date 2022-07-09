import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/navbartop.dart';
import 'package:medicinesystem/app/controllers/reportes_controller.dart';
import 'package:medicinesystem/app/ui/pages/reportes_page/widgets/diagnostico.dart';
import 'package:medicinesystem/app/ui/pages/reportes_page/widgets/edad.dart';
import 'package:medicinesystem/app/ui/pages/reportes_page/widgets/genero.dart';
import 'package:medicinesystem/app/ui/pages/reportes_page/widgets/medicamentos.dart';
import 'package:medicinesystem/app/ui/pages/reportes_page/widgets/pagos.dart';
import 'package:medicinesystem/app/ui/pages/reportes_page/widgets/pesopromedio.dart';
import 'package:medicinesystem/app/ui/pages/reportes_page/widgets/vacunas.dart';
import 'package:medicinesystem/app/ui/pages/reportes_page/widgets/zona.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navbartop(
        widget: GetBuilder<ReportesController>(
            init: ReportesController(),
            builder: (_) {
              return Column(
                children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Reportes",style: Theme.of(context).textTheme.titleLarge,)),
                  Column(
                children: [
                  TabBar(
                    controller: _.tabController,
                    isScrollable: true, 
                    labelColor: Colors.black, tabs: [
                    Tab(
                      text: "Pagos",
                    ),
                    Tab(
                      text: "Diagnóstico",
                    ),
                    Tab(
                      text: "Vacunas",
                    ),
                    Tab(
                      text: "Medicamentos",
                    ),
                    Tab(
                      text: "Peso promedio",
                    ),
                    Tab(
                      text: "Edad",
                    ),
                    Tab(
                      text: "Género",
                    ),
                    Tab(
                      text: "Zona",
                    ),
                    
                  ]),
                  Container(
                    height: Get.height ,
                    width: Get.width,
                    child: TabBarView(
                      controller: _.tabController,
                      children: [
                      Pagos(),
                      Diagnostico(),
                      Vacunas(),
                      Medicamentos(),
                      Pesopromedio(),
                      Edad(),
                      Genero(),
                      Zona(),
                      
                    ]),
                  )
                ],
              ),
                ],
              );
            }));
  }
}
