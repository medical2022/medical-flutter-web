
import 'package:get/get.dart';
import '../controllers/detailspaciente_controller.dart';


class DetailspacienteBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailspacienteController>(() => DetailspacienteController());
  }
}