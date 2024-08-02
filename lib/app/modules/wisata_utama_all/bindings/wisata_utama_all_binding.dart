import 'package:get/get.dart';

import '../controllers/wisata_utama_all_controller.dart';

class WisataUtamaAllBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WisataUtamaAllController>(
      () => WisataUtamaAllController(),
    );
  }
}
