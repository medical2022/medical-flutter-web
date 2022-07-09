import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class CompLaboratorios extends StatelessWidget {
  const CompLaboratorios({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Laboratorios",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            
            Row(
              children: [
                Icon(FontAwesomeIcons.plus),
                Text("Añadir medicamento"),
                SizedBox(width: 1.w),
                Icon(FontAwesomeIcons.plus),
                Text("Añadir medicamento"),
              ],
            )
          ],
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 32),
          child: DataTable(
            columns: <DataColumn>[
              DataColumn(
                  label: Text("Estudio",
                      style: Theme.of(context).textTheme.headlineSmall)),
              DataColumn(
                  label: Text("Activo",
                      style: Theme.of(context).textTheme.headlineSmall)),
              DataColumn(
                  label: Text("",
                      style: Theme.of(context).textTheme.headlineSmall)),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text("sdadasdsd ",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(Text("JSQ00001-202",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(
                    ElevatedButton(onPressed: () {}, child: Text("Editar"))),
              ]),
              DataRow(cells: [
                DataCell(Text("sdadasdsd ",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(Text("JSQ00001-202",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(
                    ElevatedButton(onPressed: () {}, child: Text("Editar"))),
              ]),
            ],
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 32),
          child: DataTable(
            columns: <DataColumn>[
              DataColumn(
                  label: Text("Predeterminado",
                      style: Theme.of(context).textTheme.headlineSmall)),
              DataColumn(
                  label: Text("Subestudio",
                      style: Theme.of(context).textTheme.headlineSmall)),
                      DataColumn(
                  label: Text("Activo",
                      style: Theme.of(context).textTheme.headlineSmall)),
                      DataColumn(
                  label: Text("Recomendaciones",
                      style: Theme.of(context).textTheme.headlineSmall)),
              
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text("sdadasdsd ",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(Text("JSQ00001-202",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(Text("sdadasdsd ",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(Text("JSQ00001-202",
                    style: Theme.of(context).textTheme.labelSmall)),
              ]),
              DataRow(cells: [
                DataCell(Text("sdadasdsd ",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(Text("JSQ00001-202",
                    style: Theme.of(context).textTheme.labelSmall)),
               DataCell(Text("sdadasdsd ",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(Text("JSQ00001-202",
                    style: Theme.of(context).textTheme.labelSmall)),
              ]),
            ],
          ),
        ),
      ],
    );
  }
}
