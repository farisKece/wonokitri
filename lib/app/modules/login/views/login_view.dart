import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonokitri/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
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
                    'Login',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Please Sign in to access your account',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.black.withOpacity(.5),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Email',
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
                      hintText: 'Your Email',
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
                      controller: controller.passC,
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
                  Obx(
                    () => Row(
                      children: [
                        Checkbox(
                          value: controller.isChecked.value,
                          onChanged: (newBool) {
                            controller.isChecked.value = newBool!;
                          },
                        ),
                        Text(
                          'Remember me',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.black.withOpacity(.5),
                            ),
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () => Get.toNamed(Routes.FORGOT_PASSWORD),
                          child: Text(
                            'Forgot Password ?',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: Color(0xFF47793C),
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Get.offAndToNamed(Routes.DAFTAR_TIKET),
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
                        'Login',
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
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Text(
                      'Or login with',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black.withOpacity(.5),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 1,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 110,
                          // vertical: 5,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/google.png'),
                           SizedBox(
                            width: Get.width * .02,
                          ),
                          Text(
                            'Google',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 19,
                                // fontWeight: FontWeight.w600,
                                // color: Colors.white.withOpacity(.7),
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black.withOpacity(.5),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () => Get.toNamed(Routes.REGISTER),
                        child: Text(
                          'Sign up',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Color(0xFf47793C),
                            ),
                          ),
                        ),
                      )
                    ],
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
