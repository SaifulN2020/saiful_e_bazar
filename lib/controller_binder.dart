import 'package:get/get.dart';
import 'package:saiful_e_bazar/presentation/state_holder/main_bottom_nab_bar_controller.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(MainBottomNabBarController());
  }
}
