import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wonokitri/app/modules/paket_wisata_all/controllers/paket_wisata_all_controller.dart';
import 'package:wonokitri/app/modules/paket_wisata_all/views/wisata_card.dart';

class PaketWisata extends StatelessWidget {
  const PaketWisata({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<PaketWisataAllController>();
    return SizedBox(
      height: Get.height,
      child: ListView.builder(
        itemCount: 20,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return WisataCard(
            img:
                'https://c4.wallpaperflare.com/wallpaper/210/493/172/landscape-photography-of-green-mountains-during-day-time-wallpaper-preview.jpg',
            controller: controller,
          );
        },
      ),
    );
  }
}
