import 'package:get/get.dart';

import '../controllers/daftar_tiket_controller.dart';

class DaftarTiketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DaftarTiketController>(
      () => DaftarTiketController(),
    );
  }
}
