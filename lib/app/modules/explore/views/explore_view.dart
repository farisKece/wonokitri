import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonokitri/app/modules/explore/views/main_wisata.dart';
import 'package:wonokitri/app/modules/explore/views/wisata_card.dart';
import 'package:wonokitri/app/modules/paket_wisata_all/controllers/paket_wisata_all_controller.dart';
import 'package:wonokitri/app/routes/app_pages.dart';

import '../controllers/explore_controller.dart';

class ExploreView extends GetView<ExploreController> {
  const ExploreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final paketWisataC = Get.put(PaketWisataAllController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "Wonokitri",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF8BC322),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Tourism.",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(
                              0xFF548848,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    controller: controller.exploreC,
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.0),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.0),
                        ),
                      ),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFF477A3B),
                      ),
                      hintText: 'Search',
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        'Paket Wisata',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.PAKET_WISATA_ALL);
                          paketWisataC.isCurrent.value = 0;
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Selengkapnya',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Color(0xFf8BC322), fontSize: 13)),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                              color: Color(0xFf8BC322),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                SizedBox(
                  height: Get.height * .32,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    itemCount: 20,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return WisataCard(
                        img:
                            'https://c4.wallpaperflare.com/wallpaper/210/493/172/landscape-photography-of-green-mountains-during-day-time-wallpaper-preview.jpg',
                        controller: controller,
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        'Wisata Event',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.PAKET_WISATA_ALL);
                          paketWisataC.isCurrent.value = 1;
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Selengkapnya',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Color(0xFf8BC322), fontSize: 13)),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                              color: Color(0xFf8BC322),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.DETAIL_TOUR_PACKAGE),
                  child: SizedBox(
                    height: Get.height * .27,
                    child: ListView.separated(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
                      ),
                      itemCount: 20,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          // height: 100,
                          width: Get.width * .64,
                          child: Card(
                            elevation: 7,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: Get.width * .7,
                                    height: Get.width * .3,
                                    // color: Colors.red,
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                              'https://c4.wallpaperflare.com/wallpaper/210/493/172/landscape-photography-of-green-mountains-during-day-time-wallpaper-preview.jpg',
                                            ),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        ClipPath(
                                          clipper: EventCliper(),
                                          child: Container(
                                            width: 50,
                                            height: 50,
                                            color: Colors.orange,
                                          ),
                                        ),
                                        Positioned(
                                          top: 13,
                                          right: 2.5,
                                          child: Transform.rotate(
                                              angle: 50 * pi / 180,
                                              child: Text(
                                                'Event',
                                                style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )),
                                        )
                                      ],
                                    ),
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
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                      const Spacer(),
                                      Obx(
                                        () => GestureDetector(
                                          onTap: () {
                                            controller.isSavedEventPackage
                                                .toggle();
                                          },
                                          child:
                                              controller.isSavedEventPackage.value
                                                  ? const Icon(
                                                      Icons.bookmark,
                                                      color: Color(0xFF477A3B),
                                                    )
                                                  : const Icon(
                                                      Icons.bookmark_outline),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'IDR 450.000 / Pax',
                                    style: GoogleFonts.poppins(
                                      textStyle:
                                          const TextStyle(color: Colors.green),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        'Wisata Utama',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.PAKET_WISATA_ALL);
                          paketWisataC.isCurrent.value = 2;
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Selengkapnya',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      color: Color(0xFf8BC322), fontSize: 13)),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                              color: Color(0xFf8BC322),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                SizedBox(
                  width: Get.width,
                  height: 400,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const MainWisata(
                        img:
                            'https://c4.wallpaperflare.com/wallpaper/210/493/172/landscape-photography-of-green-mountains-during-day-time-wallpaper-preview.jpg',
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EventCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(size.width / 2, 0)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
