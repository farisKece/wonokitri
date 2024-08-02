import 'package:get/get.dart';

import '../controllers/wisata_event_all_controller.dart';

class WisataEventAllBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WisataEventAllController>(
      () => WisataEventAllController(),
    );
  }
}
