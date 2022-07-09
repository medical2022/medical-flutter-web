import 'package:flutter/material.dart';

class Pagos extends StatelessWidget {
  const Pagos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text("Reporte de pagos",style: Theme.of(context).textTheme.titleLarge,),
              Row(children: [
                Icon(Icons.book),
                Text("Exportar"),

              ],)
          ],
        ),
        Container(
          margin: EdgeInsets.only(bottom: 32),
          child: DataTable(
            columns: <DataColumn>[
              DataColumn(
                  label: Text("Médico",
                      style: Theme.of(context).textTheme.headlineSmall)),
              DataColumn(
                  label: Text("Fecha de pago",
                      style: Theme.of(context).textTheme.headlineSmall)),
              DataColumn(
                  label: Text("Expediente",
                      style: Theme.of(context).textTheme.headlineSmall)),
              DataColumn(
                  label: Text("Paciente",
                      style: Theme.of(context).textTheme.headlineSmall)),
              DataColumn(
                  label: Text("Paciente",
                      style: Theme.of(context).textTheme.headlineSmall)),
              DataColumn(
                  label: Text("Consulta",
                      style: Theme.of(context).textTheme.headlineSmall)),
              DataColumn(
                  label: Text("Estado",
                      style: Theme.of(context).textTheme.headlineSmall)),
              DataColumn(
                  label: Text("Importe",
                      style: Theme.of(context).textTheme.headlineSmall)),
              DataColumn(
                  label: Text("Otros cobros",
                      style: Theme.of(context).textTheme.headlineSmall)),
                      DataColumn(
                  label: Text("Importe otros cobros",
                      style: Theme.of(context).textTheme.headlineSmall)),
                      DataColumn(
                  label: Text("Total",
                      style: Theme.of(context).textTheme.headlineSmall)),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text("sdadasdsd ",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(Text("JSQ00001-202",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(Text("1231231231",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(Text("1231231231",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(Text("1231231231",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(Text("sasdasdasd #1231231231.",
                    style: Theme.of(context).textTheme.labelSmall)),
                    DataCell(Text("sasdasdasd #1231231231.",
                    style: Theme.of(context).textTheme.labelSmall)),
                    DataCell(Text("sasdasdasd #1231231231.",
                    style: Theme.of(context).textTheme.labelSmall)),
                    DataCell(Text("sasdasdasd #1231231231.",
                    style: Theme.of(context).textTheme.labelSmall)),
                    DataCell(Text("sasdasdasd #1231231231.",
                    style: Theme.of(context).textTheme.labelSmall)),
                    DataCell(Text("sasdasdasd #1231231231.",
                    style: Theme.of(context).textTheme.labelSmall)),
                    
                
              ]),
              DataRow(cells: [
                DataCell(Text("sdadasdsd ",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(Text("JSQ00001-202",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(Text("1231231231",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(Text("1231231231",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(Text("1231231231",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(Text("sasdasdasd #1231231231.",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(Text("sasdasdasd #1231231231.",
                    style: Theme.of(context).textTheme.labelSmall)),
                    DataCell(Text("sasdasdasd #1231231231.",
                    style: Theme.of(context).textTheme.labelSmall)),
                    DataCell(Text("sasdasdasd #1231231231.",
                    style: Theme.of(context).textTheme.labelSmall)),
                    DataCell(Text("sasdasdasd #1231231231.",
                    style: Theme.of(context).textTheme.labelSmall)),
                    DataCell(Text("sasdasdasd #1231231231.",
                    style: Theme.of(context).textTheme.labelSmall)),
                    
              ]),
            ],
          ),
        ),
      ],
    );
  }
}
