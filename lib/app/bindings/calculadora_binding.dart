
import 'package:get/get.dart';
import '../controllers/calculadora_controller.dart';


class CalculadoraBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CalculadoraController>(() => CalculadoraController());
  }
}