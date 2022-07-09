
import 'package:get/get.dart';
import '../controllers/consulta_controller.dart';


class ConsultaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConsultaController>(() => ConsultaController());
  }
}