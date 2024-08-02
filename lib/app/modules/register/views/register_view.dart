import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonokitri/app/routes/app_pages.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  RegisterView({Key? key}) : super(key: key);
  final List dropdownList = ['value 1', 'value 2', 'value 3', 'value 4', '+62'];
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
                    'Create Account',
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
                    'Get the best by creating an account',
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
                    'Username',
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
                  TextfieldBasic(
                    controller: controller.emailC,
                    lable: 'Username',
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
                  TextfieldBasic(
                    controller: controller.emailC,
                    lable: 'Email',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Phone Number',
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
                      controller: controller.phoneNumberC,
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
                        hintText: 'Phone Number',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: DropdownButton<String>(
                            value: controller.selectedCountryCode.value == ""
                                ? null
                                : controller.selectedCountryCode.value,
                            onChanged: (newValue) {
                              controller
                                  .upDateSelectedItem(newValue.toString());
                            },
                            items: dropdownList
                                .map<DropdownMenuItem<String>>((value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Transform.translate(
                                  offset: const Offset(0, -2),
                                  child: Text(value),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Country'),
                            Obx(
                              () => DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    contentPadding: const EdgeInsets.all(8)),
                                isExpanded: true,
                                hint: const Text('select'),
                                value: controller.selectedCountry.value.isEmpty
                                    ? null
                                    : controller.selectedCountry.value,
                                onChanged: (String? newValue) {
                                  controller.setSelectedCountry(newValue!);
                                },
                                items: controller.countries
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Gender'),
                            Obx(
                              () => DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    contentPadding: const EdgeInsets.all(8)),
                                isExpanded: true,
                                hint: const Text('select'),
                                value: controller.selectedGender.value.isEmpty
                                    ? null
                                    : controller.selectedGender.value,
                                onChanged: (String? newValue) {
                                  controller.setSelectedGender(newValue!);
                                },
                                items: controller.genders
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
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
                  TextfieldWithEyeremove(
                    controller: controller.passC,
                    isHidden: controller.isHiddenPass,
                    lable: "Password",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Confirm Password',
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
                  TextfieldWithEyeremove(
                    controller: controller.confirmC,
                    isHidden: controller.isHiddenConfirm,
                    lable: "Confirm Password",
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
                        'Register',
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
                        "Already have an account? ",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black.withOpacity(.5),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => Get.back(),
                        child: Text(
                          'Go Back',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Color(0xFf47793C),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
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

class TextfieldWithEyeremove extends StatelessWidget {
  const TextfieldWithEyeremove({
    super.key,
    required this.isHidden,
    required this.lable,
    required this.controller,
  });

  final RxBool isHidden;
  final TextEditingController controller;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextField(
        obscureText: isHidden.value,
        controller: controller,
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
          hintText: lable,
          suffixIcon: IconButton(
            onPressed: () {
              isHidden.toggle();
            },
            icon: const Icon(Icons.remove_red_eye),
          ),
        ),
      ),
    );
  }
}

class TextfieldBasic extends StatelessWidget {
  const TextfieldBasic({
    super.key,
    required this.controller,
    required this.lable,
  });

  final TextEditingController controller;
  final String? lable;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
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
        hintText: lable,
      ),
    );
  }
}
