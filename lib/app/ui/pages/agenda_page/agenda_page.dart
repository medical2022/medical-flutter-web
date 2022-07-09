import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/navbartop.dart';
import 'package:medicinesystem/app/ui/pages/agenda_page/widgets/mobileBody.dart';
import 'package:medicinesystem/app/ui/pages/agenda_page/widgets/desktopBody.dart';
import '../../../controllers/agenda_controller.dart';

class AgendaPage extends GetView<AgendaController> {
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
