
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/ui/pages/consultamedica_page/widgets/desktopbody.dart';
import 'package:medicinesystem/app/ui/pages/consultamedica_page/widgets/mobilebody.dart';
import '../../../controllers/consultamedica_controller.dart';


class ConsultamedicaPage extends GetView<ConsultamedicaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
      
      builder: (context, contraints) {

      if (contraints.maxWidth < 600) {
        return Mobilebody();
      } else {
        return Desktopbody();
      }
    }),
    );
  }
}
  