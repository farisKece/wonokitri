import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  late TextEditingController emailC;
  late TextEditingController fullnameC;
  late TextEditingController numerC;
  late TextEditingController adressC;
  var selectedCountryCode = '+62'.obs;
  var selectedCountry = ''.obs;
  var selectedGender = ''.obs;

  void upDateSelectedItem(String value) {
    selectedCountryCode.value = value;
  }

  List<String> countries = ['USA', 'Canada', 'UK', 'Australia'];
  List<String> genders = ['Male', 'Female', 'Other'];
  final List dropdownList = ['value 1', 'value 2', 'value 3', 'value 4', '+62'];

  void setSelectedCountry(String value) {
    selectedCountry.value = value;
  }

  void setSelectedGender(String value) {
    selectedGender.value = value;
  }


  @override
  void onInit() {
    emailC = TextEditingController();
    fullnameC = TextEditingController();
    numerC = TextEditingController();
    adressC = TextEditingController();
    super.onInit();
  }
}
