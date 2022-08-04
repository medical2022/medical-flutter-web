
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/ui/pages/calculadora_page/widgets/desktopbody.dart';
import 'package:medicinesystem/app/ui/pages/calculadora_page/widgets/mobilebody.dart';
import '../../../controllers/calculadora_controller.dart';


class CalculadoraPage extends GetView<CalculadoraController> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: LayoutBuilder(
      
      builder: (context, contraints) {

      if (contraints.maxWidth < 600) {
        return MobileBody();
      } else {
        return DesktopBody();
      }
    }),
    );
  }
}
  