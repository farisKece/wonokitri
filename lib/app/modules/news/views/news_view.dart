import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/news_controller.dart';

class NewsView extends GetView<NewsController> {
  const NewsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: Get.height * .1,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3), // Warna shadow
                    offset: const Offset(0.0, .9), // Posisi shadow (x, y)
                    blurRadius: 1.0, // Keburaman shadow
                    spreadRadius: 5.0, // Persebaran shadow
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 30,
                  ),
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
                    width: 35,
                  ),
                  Text(
                    'Wonokitri News',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: Get.width * .6,
                        width: Get.width * .85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://i.pinimg.com/564x/3c/dc/7c/3cdc7cbc3cc6b1aaee2ede771c57b90f.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "BUDAYA TENGGER DALAM GELIAT MASYARAKAT LERENG GUNUNG BROMO",
                        style: TextStyle(
                            fontSize: 16.5, fontWeight: FontWeight.w600),
                        maxLines: 2,
                      ),
                      const SizedBox(height: 10,),
                      Text(controller.desc),
                      const SizedBox(height: 10,)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
