
import 'package:get/get.dart';
import 'package:medicinesystem/app/controllers/altapaciente_controller.dart';
import '../controllers/consulta_controller.dart';


class AltapacienteBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AltapacientController>(() => AltapacientController());
  }
}