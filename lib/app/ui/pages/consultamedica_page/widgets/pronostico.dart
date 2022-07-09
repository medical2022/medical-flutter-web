import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/dropdownbutton.dart';
import 'package:medicinesystem/app/ui/pages/consultamedica_page/controllers/pronostico_controller.dart';
import 'package:sizer/sizer.dart';

class PronosticoView extends StatelessWidget {
  const PronosticoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PronosticoController>(
        init: PronosticoController(),
        builder: (_) {
          return Column(
            children: [
              Divider(
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child:  Text(
                    "Pronostico",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Para la vida :"),
                          Obx(() => dropdownbuttonW(
                              _.listpronostico, _.pickparalavida,22.w))
                        ],
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Para la función :"),
                          Obx(() => dropdownbuttonW(
                              _.listpronostico, _.pickparalafuncion,22.w))
                        ],
                      )),
                ],
              ),
            ],
          );
        });
  }
}
