import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  late TextEditingController emailC;

  @override
  void onInit() {
    emailC = TextEditingController();
    super.onInit();
  }
}
