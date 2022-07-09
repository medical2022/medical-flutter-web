
import 'package:get/get.dart';
import '../controllers/configuracion_controller.dart';


class ConfiguracionBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfiguracionController>(() => ConfiguracionController());
  }
}