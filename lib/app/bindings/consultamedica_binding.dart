
import 'package:get/get.dart';
import '../controllers/consultamedica_controller.dart';


class ConsultamedicaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConsultamedicaController>(() => ConsultamedicaController());
  }
}