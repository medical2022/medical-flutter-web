
import 'package:get/get.dart';
import '../controllers/agenda_controller.dart';


class AgendaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AgendaController>(() => AgendaController());
  }
}