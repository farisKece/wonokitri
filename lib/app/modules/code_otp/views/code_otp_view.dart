import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonokitri/app/routes/app_pages.dart';

import '../controllers/code_otp_controller.dart';

class CodeOtpView extends GetView<CodeOtpController> {
  const CodeOtpView({Key? key}) : super(key: key);
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
                  Center(
                    child: Text(
                      'we send 4 digit code to example@gmail.com',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black.withOpacity(.5),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      optInput(
                        otpC: controller.otp1C,
                        context: context, isSumbitted: false,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      optInput(
                        otpC: controller.otp2C,
                        context: context, isSumbitted: false,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      optInput(
                        otpC: controller.otp3C,
                        context: context, isSumbitted: false,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      optInput(
                        otpC: controller.otp4C,
                        context: context,
                        isSumbitted: true,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "Didn't get code ?",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.black.withOpacity(.6),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '1:45',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 12,
                            color: const Color(0xFF47793C).withOpacity(.6),
                          ),
                        ),
                      ),
                      Text(
                        ' resend',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.black.withOpacity(.6),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
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

class optInput extends StatelessWidget {
  const optInput({
    super.key,
    required this.otpC,
    required this.context,
    required this.isSumbitted,
  });

  // final CodeOtpController controller;
  final TextEditingController otpC;
  final BuildContext context;
  final bool isSumbitted;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: const Color(0xFF8BC342)),
      ),
      child: isSumbitted ?  TextField(
        controller: otpC,
        maxLength: 1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 30),
        decoration: const InputDecoration(
          counterText: '',
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        onSubmitted: (value) {
          Get.offAndToNamed(Routes.RESSET_PASSWORD);
        },
      ) : TextField(
        controller: otpC,
        maxLength: 1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 30),
        decoration: const InputDecoration(
          counterText: '',
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
