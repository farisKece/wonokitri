import 'package:get/get.dart';

import '../controllers/resset_password_controller.dart';

class RessetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RessetPasswordController>(
      () => RessetPasswordController(),
    );
  }
}
