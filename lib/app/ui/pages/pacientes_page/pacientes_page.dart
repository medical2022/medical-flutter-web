import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/ui/pages/pacientes_page/widgets/desktopbody.dart';
import 'package:medicinesystem/app/ui/pages/pacientes_page/widgets/mobilebody.dart';
import '../../../controllers/pacientes_controller.dart';

class PacientesPage extends GetView<PacientesController> {
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
