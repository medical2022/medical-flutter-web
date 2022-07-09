
import 'package:get/get.dart';
import '../controllers/historiaclinica_controller.dart';


class HistoriaclinicaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HistoriaclinicaController>(() => HistoriaclinicaController());
  }
}