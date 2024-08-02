import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RessetPasswordController extends GetxController {
  late TextEditingController newReset;
  late TextEditingController confirmReset;
  var isHidden = true.obs;

  @override
  void onInit() {
    newReset = TextEditingController();
    confirmReset = TextEditingController();
    super.onInit();
  }
}
