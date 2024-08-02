import 'package:get/get.dart';

class PaymentGatewayController extends GetxController {
 var selectedPayment = 'Cash'.obs;
 var selectedOption = 0.obs;
 var isChecked = false.obs;

  void changeOption(int? value) {
    selectedOption.value = value!;
    // Ini buat ngubah nilai selectedOption kalau ada pilihan baru
  }
}
