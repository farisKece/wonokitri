import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wonokitri/app/modules/FeatureScreen/views/Fotografer.dart';
import 'package:wonokitri/app/modules/FeatureScreen/views/homestay.dart';
import 'package:wonokitri/app/modules/FeatureScreen/views/tourguide.dart';

class FeatureScreenController extends GetxController {
  late TextEditingController featureC;
  var isCurrent = 0.obs;
  final RxBool isSavedTourPackage = false.obs;
  final RxBool isSavedEventPackage = false.obs;

  List<String> paketFeature = [
    "Homestay",
    "Tour Guide",
    "Fotografer",
  ];

  final screens = [
    const Homestay(),
    const TourGuide(),
    const Fotografer(),
  ];

  void CheckArguments() {
    if (Get.arguments != null) {
      isCurrent.value = Get.arguments;
    } else {
      isCurrent.value = 0;
    }
  }

  @override
  void onInit() {
    featureC = TextEditingController();
    CheckArguments();
    super.onInit();
  }
}
