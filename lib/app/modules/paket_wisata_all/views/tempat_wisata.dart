import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonokitri/app/modules/paket_wisata_all/controllers/paket_wisata_all_controller.dart';
import 'package:wonokitri/app/routes/app_pages.dart';

class WisataTempat extends StatelessWidget {
  const WisataTempat({super.key, required this.img, required this.controller});

  final String img;
  final PaketWisataAllController controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.DETAIL_TOUR_PACKAGE),
      child: SizedBox(
        width: Get.width * .70,
        // color: Colors.red,
        child: Card(
          elevation: 7,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width,
                  height: Get.width * .4,
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
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '4.7',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(.5),
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Icon(
                      Icons.star,
                      color: Color(0xFFF9B50F),
                      size: 20,
                    ),
                    const Icon(
                      Icons.star,
                      color: Color(0xFFF9B50F),
                      size: 20,
                    ),
                    const Icon(
                      Icons.star,
                      color: Color(0xFFF9B50F),
                      size: 20,
                    ),
                    const Icon(
                      Icons.star,
                      color: Color(0xFFF9B50F),
                      size: 20,
                    ),
                    const Icon(
                      Icons.star,
                      color: Color(0xFFC4C4C4),
                      size: 20,
                    ),
                    const Spacer(),
                    Text(
                      '1,3 km',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(fontSize: 12)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
