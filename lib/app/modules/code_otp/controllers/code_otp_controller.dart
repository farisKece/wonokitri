import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CodeOtpController extends GetxController {
  late TextEditingController otp1C;
  late TextEditingController otp2C;
  late TextEditingController otp3C;
  late TextEditingController otp4C;
  
  @override
  void onInit() {
    otp1C = TextEditingController();
    otp2C = TextEditingController();
    otp3C = TextEditingController();
    otp4C = TextEditingController();
    super.onInit();
  }
}
