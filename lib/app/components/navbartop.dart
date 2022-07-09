import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/data/auth/auth.dart';
import 'package:medicinesystem/app/routes/app_pages.dart';

class Navbartop extends StatelessWidget {
  final widget;
  const Navbartop({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            toolbarHeight: 0,
            automaticallyImplyLeading: false,
            expandedHeight: 90,
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
                padding: EdgeInsets.only(top: 25),
                child: Align(
                  alignment: Alignment.center,
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.local_hospital,
                        size: 60,
                      ),
                      TextButton(
                          onPressed: () {
                            // Get.toNamed(Routes.PACIENTES);
                            Get.offNamedUntil(
                                Routes.PACIENTES, (route) => false);
                          },
                          child: Text(
                            "Pacientes",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )),
                      TextButton(
                          onPressed: () {
                            // Get.toNamed(Routes.CONSULTA);
                            Get.offNamedUntil(
                                Routes.CONSULTA, (route) => false);
                          },
                          child: Text("Consulta",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12))),
                      TextButton(
                          onPressed: () {
                            Get.offNamedUntil(
                                Routes.HISTORIACLINICA, (route) => false);
                            Get.toNamed(Routes.HISTORIACLINICA);
                          },
                          child: Text("Historia Clinica",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12))),
                      TextButton(
                          onPressed: () {
                            // Get.toNamed(Routes.AGENDA);
                            Get.offNamedUntil(Routes.AGENDA, (route) => false);
                          },
                          child: Text("Agenda",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12))),
                      TextButton(
                          onPressed: () {
                            // Get.toNamed(Routes.PAGOS);
                            Get.offNamedUntil(Routes.PAGOS, (route) => false);
                          },
                          child: Text("Pagos",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12))),
                      TextButton(
                          onPressed: () {
                            // Get.toNamed(Routes.REPORTES);
                            Get.offNamedUntil(
                                Routes.REPORTES, (route) => false);
                          },
                          child: Text("Reportes",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12))),
                      TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.CONFIGURACION);
                          },
                          child: Text("Configuración",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12))),
                      SizedBox(
                        width: 6,
                      ),
                      IconButton(
                          onPressed: () {
                            Get.defaultDialog(title: "Usuario", 
                            content: Text("Se cerrara la sesión actual"),
                            actions: [
                              ElevatedButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: Text("cancelar")),
                              ElevatedButton(
                                  onPressed: () {
                                    Auth auth = new Auth();
                                    auth.signOut().then((value) =>
                                        Get.offAllNamed(Routes.LOGIN));
                                  },
                                  child: Text("Cerrar Sesión"))
                            ]);
                          },
                          icon: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 30,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 120),
            child: Card(
              elevation: 9,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: widget,
              ),
            ),
          ))
        ],
      ),
    );
    ;
  }
}
