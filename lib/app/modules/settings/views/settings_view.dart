import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
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
                      width: Get.width * .15,
                    ),
                    const Text(
                      'Settings Profile',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    const Spacer()
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Full Name',
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
                  controller: controller.fullnameC,
                  lable: 'Full Name',
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
                    controller: controller.numerC,
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
                      fillColor: Colors.white,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: DropdownButton<String>(
                          value: controller.selectedCountryCode.value == ""
                              ? null
                              : controller.selectedCountryCode.value,
                          onChanged: (newValue) {
                            controller.upDateSelectedItem(newValue.toString());
                          },
                          items: controller.dropdownList
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
                  'Adress',
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
                TextfieldBasic(controller: controller.adressC, lable: 'Adress'),
                const SizedBox(
                  height: 10,
                ),
                 SizedBox(height: Get.height * .12,),
                SizedBox(
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () => Get.back(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFf8BC342),
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 124,
                        // vertical: 5,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    child: Text(
                      'Submit',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 20,
                              // fontWeight: FontWeight.w600,
                              // color: Colors.white.withOpacity(.7),
                              color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
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
        fillColor: Colors.white,
      ),
    );
  }
}
