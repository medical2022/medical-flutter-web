import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/textformfield.dart';
import 'package:medicinesystem/app/controllers/exploracionfisica_controller.dart';
import 'package:medicinesystem/app/controllers/historiaclinica_controller.dart';
import 'package:sizer/sizer.dart';

class TerminarView extends StatefulWidget {
  TerminarView({Key? key}) : super(key: key);

  @override
  State<TerminarView> createState() => _TerminarViewState();
}

class _TerminarViewState extends State<TerminarView> {
  String select = "Emma";
  TextEditingController craneocontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HistoriaclinicaController>(
        init: HistoriaclinicaController(),
        builder: (_) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Divider(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child:  Text(
                      "Terminar",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),),
                SizedBox(
                  height: 20,
                ),
                
                
              ],
            ),
          );
        });
  }
}
