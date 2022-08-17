import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/navbartop.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicinesystem/app/controllers/consulta_controller.dart';
import 'package:medicinesystem/app/controllers/consultamedica_controller.dart';
import 'package:medicinesystem/app/data/models/ConsultaMedica_model.dart';
import 'package:medicinesystem/app/routes/app_pages.dart';
import 'package:sizer/sizer.dart';

class Desktopbody extends StatelessWidget {
  const Desktopbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var con = Get.put(ConsultaController());
    return Navbartop(
      widget: Column(
        children: [
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Consulta Médica",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Container(
                width: Get.width / 6,
                height: 40,
                child: TextFormField(
                  onChanged: (value) {
                    con.searchConsultaMedica(value);
                  },
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
              ),
        ],
      ),
    );
  }
}
