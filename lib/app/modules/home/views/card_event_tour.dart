import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonokitri/app/modules/home/controllers/home_controller.dart';

class CardEvent extends StatelessWidget {
  const CardEvent({
    super.key,
    required this.img,
    required this.controller,
  });

  final String img;
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * .65,
      height: 200,
      // color: Colors.red,
      child: Card(
        elevation: 7,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Get.width * .6,
                height: Get.width * .3,
                // color: Colors.red,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          img,
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
                            fontSize: 15, fontWeight: FontWeight.w600)),
                  ),
                  const Spacer(),
                  Obx(
                    () => GestureDetector(
                      onTap: () {
                        controller.isSavedEventPackage.toggle();
                      },
                      child: controller.isSavedEventPackage.value
                          ? const Icon(
                              Icons.bookmark,
                              color: Color(0xFF477A3B),
                            )
                          : const Icon(Icons.bookmark_outline),
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
                  textStyle: const TextStyle(color: Colors.green),
                ),
              )
            ],
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
