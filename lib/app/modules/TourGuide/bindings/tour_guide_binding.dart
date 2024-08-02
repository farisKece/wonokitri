import 'package:get/get.dart';

import '../controllers/tour_guide_controller.dart';

class TourGuideBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TourGuideController>(
      () => TourGuideController(),
    );
  }
}
