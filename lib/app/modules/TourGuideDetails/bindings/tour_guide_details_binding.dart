import 'package:get/get.dart';

import '../controllers/tour_guide_details_controller.dart';

class TourGuideDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TourGuideDetailsController>(
      () => TourGuideDetailsController(),
    );
  }
}
