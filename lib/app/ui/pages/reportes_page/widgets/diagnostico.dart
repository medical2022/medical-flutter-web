import 'package:flutter/material.dart';
class Diagnostico extends StatelessWidget {
  const Diagnostico({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text("Reporte de diagnósticos",style: Theme.of(context).textTheme.titleLarge,),
              Row(children: [
                Icon(Icons.book),
                Text("Exportar"),

              ],)
          ],
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 32),
          child: DataTable(

            columns: <DataColumn>[
              DataColumn(
                  label: Text("Diagnóstico",
                      style: Theme.of(context).textTheme.headlineSmall)),
              DataColumn(
                  label: Text("Médico",
                      style: Theme.of(context).textTheme.headlineSmall)),
              DataColumn(
                  label: Text("Edad pediatría",
                      style: Theme.of(context).textTheme.headlineSmall)),
              DataColumn(
                  label: Text("Total de incidencias",
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
                
                    
              ]),
            ],
          ),
        ),
      ],
    );
  }
}