import 'package:get/get.dart';

import '../controllers/feature_screen_controller.dart';

class FeatureScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FeatureScreenController>(
      () => FeatureScreenController(),
    );
  }
}
