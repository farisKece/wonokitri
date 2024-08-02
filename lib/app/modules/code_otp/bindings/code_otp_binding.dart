import 'package:get/get.dart';

import '../controllers/code_otp_controller.dart';

class CodeOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CodeOtpController>(
      () => CodeOtpController(),
    );
  }
}
