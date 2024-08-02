import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonokitri/app/modules/paket_wisata_all/controllers/paket_wisata_all_controller.dart';

class CardEvent extends StatelessWidget {
  const CardEvent({
    super.key,
    required this.img,
    required this.controller,
  });

  final String img;
  final PaketWisataAllController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: Get.width * .65,
      width: 235,
      // height: 200,
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
              Text(
                'Javanica Bromo',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600)),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    'IDR 450.000 / Pax',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(color: Colors.green),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.calendar_today_outlined,
                    size: 13,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    '12, Agustus 2024',
                    style: TextStyle(fontSize: 13),
                  ),
                ],
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
