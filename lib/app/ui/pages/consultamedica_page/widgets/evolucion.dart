import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/controllers/consultamedica_controller.dart';

class EvolucionView extends StatelessWidget {
  const EvolucionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var con = Get.put(ConsultamedicaController());
    return Column(
      children: [
        Divider(
          height: 10,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Evolución",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
            maxLines: 20,
            controller: con.evolucionController,
            decoration: InputDecoration(border: OutlineInputBorder())),
        
      ],
    );
  }
}
