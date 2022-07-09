
import 'package:get/get.dart';
import '../controllers/pacientes_controller.dart';


class PacientesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PacientesController>(() => PacientesController());
  }
}