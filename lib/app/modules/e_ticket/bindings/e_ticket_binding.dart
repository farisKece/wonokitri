import 'package:get/get.dart';

import '../controllers/e_ticket_controller.dart';

class ETicketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ETicketController>(
      () => ETicketController(),
    );
  }
}
