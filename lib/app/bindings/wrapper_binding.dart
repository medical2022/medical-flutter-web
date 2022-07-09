
import 'package:get/get.dart';
import '../controllers/wrapper_controller.dart';


class WrapperBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WrapperController>(() => WrapperController());
  }
}