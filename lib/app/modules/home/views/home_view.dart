import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonokitri/app/modules/home/views/card_event_tour.dart';
import 'package:wonokitri/app/modules/home/views/carousle_slider.dart';
import 'package:wonokitri/app/modules/home/views/event_button.dart';
import 'package:wonokitri/app/modules/home/views/homestay_card.dart';
import 'package:wonokitri/app/modules/home/views/wisata_card.dart';
import 'package:wonokitri/app/modules/home/views/wonokitri_news.dart';
import 'package:wonokitri/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              ClipPath(
                clipper: HomeClipper(),
                child: Container(
                  height: Get.width * .85,
                  width: Get.width,
                  color: const Color(0xFf8BC342),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Hello My Friend',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFFFFFFFF).withOpacity(.9),
                        ),
                      ),
                    ),
                    Text(
                      "Let's explore Wonokitri Village",
                      style: GoogleFonts.poppins(
                        textStyle:
                            const TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: controller.homeC,
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
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CarousleSlider(controller: controller),
                    const SizedBox(
                      height: 10,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            event_button(
                              icons: Icon(
                                Icons.train,
                                size: 33,
                                color: Color(0xFF469B4C),
                              ),
                              title: 'Paket Wisata',
                              arg: 0,
                              path: Routes.PAKET_WISATA_ALL,
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            event_button(
                              icons: Icon(
                                Icons.calendar_month_outlined,
                                size: 33,
                                color: Color(0xFF469B4C),
                              ),
                              title: 'Paket Event', arg: 1,
                              path: Routes.PAKET_WISATA_ALL,
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            event_button(
                              icons: Icon(
                                Icons.map_outlined,
                                size: 33,
                                color: Color(0xFF469B4C),
                              ),
                              title: "Guide",
                              arg: 1,
                              path: Routes.FEATURE_SCREEN,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            event_button(
                              icons: Icon(
                                Icons.linked_camera_outlined,
                                size: 33,
                                color: Color(0xFF469B4C),
                              ),
                              title: 'Fotografer',
                              path: Routes.FEATURE_SCREEN,
                              arg: 2,
                            ),
                            SizedBox(
                              width: 42,
                            ),
                            event_button(
                              icons: Icon(
                                Icons.local_offer_rounded,
                                size: 33,
                                color: Color(0xFF469B4C),
                              ),
                              title: 'Wonokitri News', arg: 2,
                              path: Routes.FEATURE_SCREEN,
                            ),
                            SizedBox(
                              width: 42,
                            ),
                            event_button(
                              icons: Icon(
                                Icons.home_sharp,
                                size: 33,
                                color: Color(0xFF469B4C),
                              ),
                              title: "Homestay",
                              path: Routes.FEATURE_SCREEN,
                              arg: 0,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Tour packages',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color(0xFF222222),
                              fontWeight: FontWeight.w600,
                              fontSize: 19)),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    SizedBox(
                      height: Get.height * .31,
                      child: ListView.builder(
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
                      height: 12,
                    ),
                    Text(
                      'Event Tour packages  ',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color(0xFF222222),
                              fontWeight: FontWeight.w600,
                              fontSize: 19)),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    SizedBox(
                      height: Get.height * .27,
                      child: ListView.separated(
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                        itemCount: 20,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => Get.toNamed(Routes.DETAIL_TOUR_PACKAGE),
                            child: SizedBox(
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
                                            borderRadius:
                                                BorderRadius.circular(5)),
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
                                              child: controller
                                                      .isSavedEventPackage.value
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
                                          textStyle: const TextStyle(
                                              color: Colors.green),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Homestay',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color(0xFF222222),
                              fontWeight: FontWeight.w600,
                              fontSize: 19)),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    SizedBox(
                      width: Get.width,
                      height: 540,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return const HomestayCard(
                            img:
                                'https://c4.wallpaperflare.com/wallpaper/210/493/172/landscape-photography-of-green-mountains-during-day-time-wallpaper-preview.jpg',
                          );
                        },
                      ),
                    ),
                    Text(
                      'Wonokitri News',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color(0xFF222222),
                            fontWeight: FontWeight.w600,
                            fontSize: 19),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    SizedBox(
                      height: Get.height * .33,
                      child: ListView.builder(
                        itemCount: 20,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return News(
                            img:
                                'https://yachtsourcing.com/wp-content/uploads/Head-Balinese-Hinduism.jpg',
                            controller: controller,
                            text: 'Aakjsldjfaljdlajf;lasjdfa;lsdfkjasfasdlkfjadsj',
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.7);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height * 0.7);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
