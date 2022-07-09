import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/textformfield.dart';

class SolicitudesView extends StatelessWidget {
  const SolicitudesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController subestudiocontroller = TextEditingController();
    return Column(
      children: [
        Divider(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text(
                    "Solicitudes",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
            textformfield(
                "Buscar subestudio", Get.width / 7, subestudiocontroller)
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            margin: EdgeInsets.only(bottom: 32),
            width: Get.width,
            child: DataTable(
              columns: <DataColumn>[
                DataColumn(label: Text("Estudio")),
                DataColumn(label: Text("Subestudio")),
                DataColumn(label: Text("Recomendaciones")),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text("sdadasdsd adasdasdasdda asdasdasdasdasd")),
                  DataCell(Text("JSQ00001-202")),
                  DataCell(Text("1231231231")),
                ]),
                DataRow(cells: [
                  DataCell(Text("sdadasdsd adasdasdasdda asdasdasdasdasd")),
                  DataCell(Text("JSQ00001-202")),
                  DataCell(Text("1231231231")),
                ])
              ],
            )),
        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
              onPressed: () {
                Get.dialog(AlertDialog(
                  actions: [TextButton(onPressed: (){}, child: Text("Buscar solicitud"))],
                ));
              },
              child: Text("Solicitudes anteriores")),
        )
      ],
    );
  }
}
