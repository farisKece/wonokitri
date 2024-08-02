import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  late TextEditingController emailC;
  late TextEditingController passC;
  late TextEditingController phoneNumberC;
  var isHiddenPass = true.obs;
  var isHiddenConfirm = true.obs;
  var isChecked = false.obs;
  var selectedCountryCode = '+62'.obs;
  var dropdownValue = '1'.obs;
  var selectedCountry = ''.obs;
  var selectedGender = ''.obs;
  late TextEditingController confirmC;

  void upDateSelectedItem(String value) {
    selectedCountryCode.value = value;
  }


  List<String> countries = ['USA', 'Canada', 'UK', 'Australia'];
  List<String> genders = ['Male', 'Female', 'Other'];

  void setSelectedCountry(String value) {
    selectedCountry.value = value;
  }

  void setSelectedGender(String value) {
    selectedGender.value = value;
  }

  @override
  void onInit() {
    emailC = TextEditingController();
    passC = TextEditingController();
    phoneNumberC = TextEditingController();
    confirmC = TextEditingController();
    super.onInit();
  }
}
