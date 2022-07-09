import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/navbartop.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicinesystem/app/routes/app_pages.dart';
import 'package:sizer/sizer.dart';

class Desktopbody extends StatelessWidget {
  const Desktopbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navbartop(
      widget: Column(
        children: [
          SizedBox(height: 2.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Consulta Médica",style: Theme.of(context).textTheme.titleLarge,),
              Container(
                width: Get.width / 6,
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Buscar paciente..",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder()),
                ),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.only(bottom: 32),
              width: Get.width,
              child: DataTable(
                columns: <DataColumn>[
                  DataColumn(label: Text("PACIENTE")),
                  DataColumn(label: Text("EVOLUCIÓN")),
                  DataColumn(label: Text("FECHA DE REGISTRO")),
                  DataColumn(label: Text("ACCIONES")),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("sdadasdsd adasdasdasdda asdasdasdasdasd")),
                    DataCell(Text("JSQ00001-202")),
                    DataCell(Text("1231231231")),
                    DataCell(ElevatedButton(
                      child: Text("Editar"),
                      onPressed: () {},
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("sdadasdsd adasdasdasdda asdasdasdasdasd")),
                    DataCell(Text("JSQ00001-202")),
                    DataCell(Text("1231231231")),
                    DataCell(ElevatedButton(
                      child: Text("Editar"),
                      onPressed: () {
                        Get.toNamed(
                            "${Routes.CONSULTA}${Routes.CONSULTAMEDICA}");
                      },
                    )),
                  ])
                ],
              )),
        ],
      ),
    );
  }
}
