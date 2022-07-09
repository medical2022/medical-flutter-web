import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/navbartop.dart';
import 'package:medicinesystem/app/controllers/configuracion_controller.dart';
import 'package:medicinesystem/app/ui/pages/configuracion_page/widgets/comp_aplicaciones.dart';
import 'package:medicinesystem/app/ui/pages/configuracion_page/widgets/comp_empresa.dart';
import 'package:medicinesystem/app/ui/pages/configuracion_page/widgets/comp_encuesta.dart';
import 'package:medicinesystem/app/ui/pages/configuracion_page/widgets/comp_exploracion.dart';
import 'package:medicinesystem/app/ui/pages/configuracion_page/widgets/comp_historia.dart';
import 'package:medicinesystem/app/ui/pages/configuracion_page/widgets/comp_interconsulta.dart';
import 'package:medicinesystem/app/ui/pages/configuracion_page/widgets/comp_laboratorios.dart';
import 'package:medicinesystem/app/ui/pages/configuracion_page/widgets/comp_medicamentos.dart';
import 'package:medicinesystem/app/ui/pages/configuracion_page/widgets/comp_noticias.dart';
import 'package:medicinesystem/app/ui/pages/configuracion_page/widgets/comp_receta.dart';
import 'package:medicinesystem/app/ui/pages/configuracion_page/widgets/comp_suscripcion.dart';
import 'package:medicinesystem/app/ui/pages/configuracion_page/widgets/comp_usuarios.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navbartop(
        widget: GetBuilder<ConfiguracionController>(
            init: ConfiguracionController(),
            builder: (_) {
              return Column(
                children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Configuración",style: Theme.of(context).textTheme.titleLarge,)),
                  Column(
                children: [
                  TabBar(
                    controller: _.tabController,
                    isScrollable: true, 
                    labelColor: Colors.black, tabs: [
                    Tab(
                      text: "Empresa",
                    ),
                    Tab(
                      text: "Admin.Usuarios",
                    ),
                    Tab(
                      text: "Encuesta",
                    ),
                    Tab(
                      text: "Noticias",
                    ),
                    Tab(
                      text: "Medicamentos",
                    ),
                    Tab(
                      text: "Laboratorios",
                    ),
                    Tab(
                      text: "Exploración Física",
                    ),
                    Tab(
                      text: "Historia clínica",
                    ),
                    Tab(
                      text: "Médicos interconsulta",
                    ),
                    Tab(
                      text: "Receta",
                    ),
                    Tab(
                      text: "Aplicaciones",
                    ),
                    Tab(
                      text: "Suscripción",
                    ),
                    
                  ]),
                  Container(
                    height: Get.height ,
                    width: Get.width,
                    child: TabBarView(
                      controller: _.tabController,
                      children: [
                      CompEmpresa(),
                      CompUsuarios(),
                      CompEncuesta(),
                      CompNoticias(),
                      CompMedicamentos(),
                      CompLaboratorios(),
                      CompExploracion(),
                      CompHistoria(),
                      CompInterconsulta(),
                      CompReceta(),
                      CompAplicaciones(),
                      CompSuscripcion
                      
                      
                      
                      
                      (),
                      
                    ]),
                  )
                ],
              ),
                ],
              );
            }));
  }
}