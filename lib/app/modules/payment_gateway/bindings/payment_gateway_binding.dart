import 'package:get/get.dart';

import '../controllers/payment_gateway_controller.dart';

class PaymentGatewayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentGatewayController>(
      () => PaymentGatewayController(),
    );
  }
}
