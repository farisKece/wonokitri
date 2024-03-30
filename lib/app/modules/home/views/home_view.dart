import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonokitri/app/modules/home/views/card_event_tour.dart';
import 'package:wonokitri/app/modules/home/views/card_packages.dart';
import 'package:wonokitri/app/modules/home/views/carousle_slider.dart';
import 'package:wonokitri/app/modules/home/views/homestay_card.dart';

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
                          color: const Color(0xFFFFFFFF).withOpacity(.5),
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
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                        filled: true,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CarousleSlider(controller: controller),
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
                      height: 200,
                      child: ListView.builder(
                        itemCount: 20,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CardPackages(
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
                      height: 200,
                      child: ListView.builder(
                        itemCount: 20,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CardEvent(
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
                      height: 550,
                      child: ListView.builder(
                        // harusnya pakai stream builder nanti pean atur aja pake stream builder biar real time, saya kayak di atas pokok nya di home ini pake stream bulider jangan listview builder
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
