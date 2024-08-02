import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wonokitri/app/modules/paket_wisata_all/views/paket_wisata_screen.dart';
import 'package:wonokitri/app/modules/paket_wisata_all/views/tempat_wisata_screen.dart';
import 'package:wonokitri/app/modules/paket_wisata_all/views/wisata_event_screen.dart';

class PaketWisataAllController extends GetxController {
  late TextEditingController paketWisataC;
  var isCurrent = 0.obs;
  final RxBool isSavedTourPackage = false.obs;
  final RxBool isSavedEventPackage = false.obs;

  List<String> paketWisataList = [
    "Paket Wisata",
    "Wisata Event",
    "Tempat Wisata"
  ];

  final screens = [
    const PaketWisata(),
    const WisataEvent(),
    const TempatWisata(),
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
    paketWisataC = TextEditingController();
    CheckArguments();

    super.onInit();
  }
}
