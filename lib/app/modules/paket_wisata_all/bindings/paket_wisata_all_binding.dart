import 'package:get/get.dart';

import '../controllers/paket_wisata_all_controller.dart';

class PaketWisataAllBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaketWisataAllController>(
      () => PaketWisataAllController(),
    );
  }
}
