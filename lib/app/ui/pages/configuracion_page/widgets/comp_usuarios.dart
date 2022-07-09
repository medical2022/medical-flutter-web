import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class CompUsuarios extends StatelessWidget {
  const CompUsuarios({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text("Admin.Usuarios",style: Theme.of(context).textTheme.titleLarge,),
              Row(children: [
                Text("49 licencias disponibles de 50"),
                SizedBox(width: 1.w),
                Icon(FontAwesomeIcons.plus),
                Text("Agregar usuario"),

              ],)
          ],
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 32),
          child: DataTable(
            columns: <DataColumn>[
              DataColumn(
                  label: Text("Nombre",
                      style: Theme.of(context).textTheme.headlineSmall)),
              DataColumn(
                  label: Text("Especialidad",
                      style: Theme.of(context).textTheme.headlineSmall)),
              DataColumn(
                  label: Text("Rol",
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