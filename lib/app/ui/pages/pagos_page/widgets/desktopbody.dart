import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/navbartop.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Desktopbody extends StatelessWidget {
  const Desktopbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController con = ScrollController();
    return Navbartop(
      widget:  Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.plus)),
                  Text("Registrar pago")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 Text(
                    "Pagos",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  
                ],
              ),
               Container(
                width: double.infinity,
                      margin: EdgeInsets.only(bottom: 32),
                      
                      child: DataTable(
                        
                     
                        columns: <DataColumn>[
                          DataColumn(label: Text("PACIENTE",style: Theme.of(context).textTheme.headlineSmall)),
                          DataColumn(label: Text("TIPO DE CONSULTA",style: Theme.of(context).textTheme.headlineSmall)),
                          DataColumn(label: Text("IMPORTE",style: Theme.of(context).textTheme.headlineSmall)),
                          DataColumn(label: Text("OTROS COBROS",style: Theme.of(context).textTheme.headlineSmall)),
                          DataColumn(label: Text("IMPORTE OTROS COBROS",style: Theme.of(context).textTheme.headlineSmall)),
                          DataColumn(label: Text("MÉDICO",style: Theme.of(context).textTheme.headlineSmall)),
                          DataColumn(label: Text("ESTADO",style: Theme.of(context).textTheme.headlineSmall)),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text("sdadasdsd ",style: Theme.of(context).textTheme.labelSmall)),
                            DataCell(Text("JSQ00001-202",style: Theme.of(context).textTheme.labelSmall)),
                            DataCell(Text("1231231231",style: Theme.of(context).textTheme.labelSmall)),
                            DataCell(Text("1231231231",style: Theme.of(context).textTheme.labelSmall)),
                            DataCell(Text("1231231231",style: Theme.of(context).textTheme.labelSmall)),
                            DataCell(Text(
                                "sasdasdasd #1231231231.",style: Theme.of(context).textTheme.labelSmall)),
                            DataCell(ElevatedButton(
                              child: Text("Editar",style: Theme.of(context).textTheme.displaySmall),
                              onPressed: () {},
                            )),
                          ]),
                           DataRow(cells: [
                            DataCell(Text("sdadasdsd ",style: Theme.of(context).textTheme.labelSmall)),
                            DataCell(Text("JSQ00001-202",style: Theme.of(context).textTheme.labelSmall)),
                            DataCell(Text("1231231231",style: Theme.of(context).textTheme.labelSmall)),
                            DataCell(Text("1231231231",style: Theme.of(context).textTheme.labelSmall)),
                            DataCell(Text("1231231231",style: Theme.of(context).textTheme.labelSmall)),
                            DataCell(Text(
                                "sasdasdasd #1231231231.",style: Theme.of(context).textTheme.labelSmall)),
                            DataCell(ElevatedButton(
                              child: Text("Editar",style: Theme.of(context).textTheme.displaySmall),
                              onPressed: () {},
                            )),
                          ]),
                        ],
                     
                ),
              ),
            ],
          ),
       
    );
  }
}
