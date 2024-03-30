import 'package:get/get.dart';

import '../controllers/maps_screen_controller.dart';

class MapsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MapsScreenController>(
      () => MapsScreenController(),
    );
  }
}
