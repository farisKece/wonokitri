import 'package:get/get.dart';

class QrisPaymentController extends GetxController {
  var isDialogVisible = false.obs;

  void showDialogOtomatically() {
    isDialogVisible.value = true;
  } 

  void showDialog() {
    Get.defaultDialog();
  }
}
