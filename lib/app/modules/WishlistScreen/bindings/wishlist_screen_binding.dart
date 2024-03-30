import 'package:get/get.dart';

import '../controllers/wishlist_screen_controller.dart';

class WishlistScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WishlistScreenController>(
      () => WishlistScreenController(),
    );
  }
}
