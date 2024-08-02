import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
 late TextEditingController emailC;
 late TextEditingController passC;
 var isHidden = true.obs;
 var isChecked = false.obs;

 @override
  void onInit() {
    emailC = TextEditingController();   
    passC = TextEditingController();
    super.onInit();
  }
}
