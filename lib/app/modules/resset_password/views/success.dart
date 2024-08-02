import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonokitri/app/routes/app_pages.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  SizedBox(
                    height: Get.height * .18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Wonokitri",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF8BC342),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Tourism.",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 25,
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
                    height: 20,
                  ),
                  Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFF8BC342),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        const Icon(Icons.check, size: 60, color: Colors.white),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Text(
                      'Congrats !',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      'Your Password Changed Successfully',
                      style: TextStyle(
                          color: Colors.black.withOpacity(.5), fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFf8BC342),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.offAndToNamed(Routes.LOGIN);
                        print('apa');
                      },
                      child: Center(
                        child: Text(
                          'Retrun your Password',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 17,
                              // fontWeight: FontWeight.w600,
                              // color: Colors.white.withOpacity(.7),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
