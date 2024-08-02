import 'package:get/get.dart';

import '../controllers/fotografer_details_controller.dart';

class FotograferDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FotograferDetailsController>(
      () => FotograferDetailsController(),
    );
  }
}
