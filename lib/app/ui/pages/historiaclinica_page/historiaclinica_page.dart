import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/navbartop.dart';
import 'package:medicinesystem/app/ui/pages/historiaclinica_page/widgets/desktopbody.dart';
import 'package:medicinesystem/app/ui/pages/historiaclinica_page/widgets/mobilebody.dart';
import '../../../controllers/historiaclinica_controller.dart';

class HistoriaclinicaPage extends GetView<HistoriaclinicaController> {
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
    );;
  }
}
