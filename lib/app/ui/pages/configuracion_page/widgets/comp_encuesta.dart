import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CompEncuesta extends StatelessWidget {
  const CompEncuesta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text("Encuestas",style: Theme.of(context).textTheme.titleLarge,),
              Row(children: [
                Icon(FontAwesomeIcons.plus),
                Text("Añadir noticia"),

              ],)
          ],
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 32),
          child: DataTable(
            columns: <DataColumn>[
              DataColumn(
                  label: Text("Preguntas registradas",
                      style: Theme.of(context).textTheme.headlineSmall)),
              DataColumn(
                  label: Text("Tipo",
                      style: Theme.of(context).textTheme.headlineSmall)),
              DataColumn(
                  label: Text("Orden de pregunta",
                      style: Theme.of(context).textTheme.headlineSmall)),
                      DataColumn(
                  label: Text("Activo",
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