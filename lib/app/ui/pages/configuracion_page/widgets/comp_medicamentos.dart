import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class CompMedicamentos extends StatelessWidget {
  const CompMedicamentos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text("Medicamentos",style: Theme.of(context).textTheme.titleLarge,),
              Row(children: [
                
                Icon(FontAwesomeIcons.plus),
                Text("Añadir medicamento"),

              ],)
          ],
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 32),
          child: DataTable(
            columns: <DataColumn>[
              DataColumn(
                  label: Text("Medicamentos registrados",
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
                    
                DataCell(ElevatedButton(onPressed: () {}, child: Text("Editar"))),
                
                    
                
              ]),
              DataRow(cells: [
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