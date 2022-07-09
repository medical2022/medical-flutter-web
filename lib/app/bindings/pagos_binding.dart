
import 'package:get/get.dart';
import '../controllers/pagos_controller.dart';


class PagosBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PagosController>(() => PagosController());
  }
}