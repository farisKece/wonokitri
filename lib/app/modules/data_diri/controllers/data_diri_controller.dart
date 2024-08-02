import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataDiriController extends GetxController {
late TextEditingController kel1C;
late TextEditingController emailC;
late TextEditingController phoneNumberC;
var selectedNumberPhone = '+62'.obs;

List<String> numberPhone = ['+62', '+63', '+64', '+65'];

void setSelectedNumberPhone(String value) {
    selectedNumberPhone.value = value;
  }

@override
  void onInit() {
    kel1C = TextEditingController();
    emailC = TextEditingController();
    phoneNumberC = TextEditingController();
    super.onInit();
  }
}
