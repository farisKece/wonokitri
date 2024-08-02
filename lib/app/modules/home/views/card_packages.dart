import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonokitri/app/modules/home/controllers/home_controller.dart';
import 'package:wonokitri/app/routes/app_pages.dart';

class CardPackages extends StatelessWidget {
  const CardPackages({super.key, required this.img, required this.controller});

  final String img;
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.DETAIL_TOUR_PACKAGE),
      child: SizedBox(
        width: Get.width * .65,
        // height: 300,
        // color: Colors.red,
        child: Card(
          elevation: 7,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width * .75,
                  height: Get.width * .3,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            img,
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(5)),
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text(
                      'Javanica Bromo',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600)),
                    ),
                    const Spacer(),
                    Obx(
                      () => GestureDetector(
                        onTap: () {
                          controller.isSavedTourPackage.toggle();
                        },
                        child: controller.isSavedTourPackage.value
                            ? const Icon(
                                Icons.bookmark,
                                color: Color(0xFF477A3B),
                              )
                            : const Icon(Icons.bookmark_outline),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'IDR 450.000 / Pax',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(color: Colors.green),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
