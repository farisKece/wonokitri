import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonokitri/app/modules/resset_password/views/success.dart';
import 'package:wonokitri/app/routes/app_pages.dart';

import '../controllers/resset_password_controller.dart';

class RessetPasswordView extends GetView<RessetPasswordController> {
  const RessetPasswordView({Key? key}) : super(key: key);
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
                    height: 40,
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
                  Text(
                    'New Password',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Obx(
                    () => TextField(
                      obscureText: controller.isHidden.value,
                      controller: controller.newReset,
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(
                            Radius.circular(7.0),
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                          borderRadius: BorderRadius.all(
                            Radius.circular(7.0),
                          ),
                        ),
                        filled: true,
                        hintText: 'Your Password',
                        suffixIcon: IconButton(
                          onPressed: () {
                            controller.isHidden.toggle();
                          },
                          icon: const Icon(Icons.remove_red_eye),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Password',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Obx(
                    () => TextField(
                      obscureText: controller.isHidden.value,
                      controller: controller.confirmReset,
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(
                            Radius.circular(7.0),
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                          borderRadius: BorderRadius.all(
                            Radius.circular(7.0),
                          ),
                        ),
                        filled: true,
                        hintText: 'Your Password',
                        suffixIcon: IconButton(
                          onPressed: () {
                            controller.isHidden.toggle();
                          },
                          icon: const Icon(Icons.remove_red_eye),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
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
                        Get.off(() => const Success());
                        print('apa');
                      } ,
                      child: Center(
                        child: Text(
                          'Set New Password',
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
                  const SizedBox(height: 50,),
                  Center(
                    child: TextButton(
                      onPressed: () => Get.offNamed(Routes.LOGIN),
                      child: Text(
                        'Return to Login',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Color(0xFF47793C),
                            fontWeight: FontWeight.w600,
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
