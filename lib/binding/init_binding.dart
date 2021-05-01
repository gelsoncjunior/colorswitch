import 'package:colorswitch/controller/color_controller.dart';
import 'package:get/get.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ColorController>(() => ColorController());
  }
}
