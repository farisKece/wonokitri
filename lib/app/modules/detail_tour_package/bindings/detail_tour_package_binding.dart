import 'package:get/get.dart';

import '../controllers/detail_tour_package_controller.dart';

class DetailTourPackageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailTourPackageController>(
      () => DetailTourPackageController(),
    );
  }
}
