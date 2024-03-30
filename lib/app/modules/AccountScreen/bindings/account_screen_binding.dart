import 'package:get/get.dart';

import '../controllers/account_screen_controller.dart';

class AccountScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountScreenController>(
      () => AccountScreenController(),
    );
  }
}
