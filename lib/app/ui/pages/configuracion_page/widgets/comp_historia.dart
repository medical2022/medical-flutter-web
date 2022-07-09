import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class CompHistoria extends StatelessWidget {
  const CompHistoria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text("Historia clínica",style: Theme.of(context).textTheme.titleLarge,),
              Row(children: [
                

              ],)
          ],
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 32),
          child: DataTable(
            columns: <DataColumn>[
              DataColumn(
                  label: Text("Nombre del campo",
                      style: Theme.of(context).textTheme.headlineSmall)),
              DataColumn(
                  label: Text("Permisos",
                      style: Theme.of(context).textTheme.headlineSmall)),
              DataColumn(
                  label: Text("Categoría",
                      style: Theme.of(context).textTheme.headlineSmall)),
                  DataColumn(
                  label: Text("Subcategoría",
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
                    DataCell(Text("sdadasdsd ",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(Text("JSQ00001-202",
                    style: Theme.of(context).textTheme.labelSmall)),
                DataCell(ElevatedButton(onPressed: () {}, child: Text("Editar"))),
                
                    
                
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
                    DataCell(ElevatedButton(onPressed: () {}, child: Text("Editar"))),
                
                
                    
              ]),
            ],
          ),
        ),
      ],
    );
  }
}