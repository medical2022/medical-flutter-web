
import 'package:get/get.dart';
import '../controllers/reportes_controller.dart';


class ReportesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReportesController>(() => ReportesController());
  }
}