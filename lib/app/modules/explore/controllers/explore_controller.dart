import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreController extends GetxController {
  late TextEditingController exploreC;
  final RxBool isSavedTourPackage = false.obs;
  final RxBool isSavedEventPackage = false.obs;

  @override
  void onInit() {
    exploreC = TextEditingController();
    super.onInit();
  }
}
