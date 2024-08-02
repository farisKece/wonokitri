import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonokitri/app/routes/app_pages.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);
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
                  const SizedBox(
                    height: 130,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Wonokitri",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF8BC342),
                          ),
                        ),
                      ),
                      Text(
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
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Enter the Email adress of Phone  Associated with your account',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.black.withOpacity(.5),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  TextField(
                    controller: controller.emailC,
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
                      hintText: 'Enter Your Email',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Get.toNamed(Routes.CODE_OTP),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFf8BC342),
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 110,
                          // vertical: 5,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      child: Text(
                        'Get code',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 19,
                            // fontWeight: FontWeight.w600,
                            // color: Colors.white.withOpacity(.7),
                            color: Colors.white,
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
