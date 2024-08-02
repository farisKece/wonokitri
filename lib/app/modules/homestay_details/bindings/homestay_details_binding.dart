import 'package:get/get.dart';

import '../controllers/homestay_details_controller.dart';

class HomestayDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomestayDetailsController>(
      () => HomestayDetailsController(),
    );
  }
}
