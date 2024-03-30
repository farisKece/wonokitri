import 'package:get/get.dart';

import '../controllers/detail_homestay_controller.dart';

class DetailHomestayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailHomestayController>(
      () => DetailHomestayController(),
    );
  }
}
