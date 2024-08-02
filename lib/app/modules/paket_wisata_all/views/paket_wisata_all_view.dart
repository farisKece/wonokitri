import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/paket_wisata_all_controller.dart';

class PaketWisataAllView extends GetView<PaketWisataAllController> {
  const PaketWisataAllView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () => Get.back(),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Expanded(
                        child: TextField(
                          controller: controller.paketWisataC,
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
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: controller.paketWisataList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Obx(() => GestureDetector(
                              onTap: () {
                                controller.isCurrent.value = index;
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin: const EdgeInsets.all(2),
                                height: 37,
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: controller.isCurrent.value == index
                                      ? Color(0xFF8BC342)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.25),
                                      offset: const Offset(4.0, 4.0),
                                      blurRadius: 10.0,
                                    ),
                                  ],
                                ),
                                child: Text(
                                  controller.paketWisataList[index],
                                  style: TextStyle(
                                      color: controller.isCurrent.value == index
                                          ? Colors.white
                                          : Colors.black.withOpacity(.5)),
                                ),
                              ),
                            ));
                      },
                    ),
                  ),
                  Obx(
                    () => controller.screens[
                        controller.isCurrent.value],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
