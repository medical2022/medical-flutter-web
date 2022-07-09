import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/navbartop.dart';
import 'package:medicinesystem/app/ui/pages/reportes_page/widgets/desktopbody.dart';
import 'package:medicinesystem/app/ui/pages/reportes_page/widgets/mobilebody.dart';
import '../../../controllers/reportes_controller.dart';

class ReportesPage extends GetView<ReportesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
