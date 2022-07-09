import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/navbartop.dart';
import 'package:medicinesystem/app/ui/pages/consulta_page/widgets/desktopbody.dart';
import 'package:medicinesystem/app/ui/pages/consulta_page/widgets/mobilebody.dart';
import '../../../controllers/consulta_controller.dart';

class ConsultaPage extends GetView<ConsultaController> {
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
