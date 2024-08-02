import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/detail_news_controller.dart';

class DetailNewsView extends GetView<DetailNewsController> {
  const DetailNewsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: const Offset(4.0, 4.0),
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                        child: const Icon(Icons.arrow_back),
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Text(
                      'Details',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
