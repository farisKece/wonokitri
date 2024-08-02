import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonokitri/app/routes/app_pages.dart';

import '../controllers/data_diri_controller.dart';

class DataDiriView extends GetView<DataDiriController> {
  const DataDiriView({Key? key}) : super(key: key);
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
                  SizedBox(
                    width: Get.width * .2,
                  ),
                  Text(
                    'Daftar Tiket',
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: Get.width,
                        height: 155,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(1),
                                offset: const Offset(0.0, 2.0),
                                blurRadius: 10.0,
                              ),
                            ]),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'https://c4.wallpaperflare.com/wallpaper/210/493/172/landscape-photography-of-green-mountains-during-day-time-wallpaper-preview.jpg',
                                width: 90,
                                height: 90,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Longvilia Bromo',
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  // SizedBox(height: 5),
                                  buildItem('wisatawan 3 x', 'Rp 1.350.000'),
                                  buildItem('fotografer 1 x', 'Rp 150.000'),
                                  buildItem('homestay 1 x', 'Rp 250.000'),
                                  const Divider(),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Total',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Rp 1.750.000',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Data Diri ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Masukkan data diri kelompok anda',
                        style: TextStyle(color: Colors.black.withOpacity(.5)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Nama kelompok 1',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      kelompok(
                        controller: controller.kel1C,
                        lable: 'Nama kelompok 1',
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Email kelompok 1',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      kelompok(
                        controller: controller.emailC,
                        lable: 'Email kelompok 1',
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Pilih Tour Guide',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
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
                            fillColor: Colors.white,
                            prefixIcon: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: DropdownButton<String>(
                                value:
                                    controller.selectedNumberPhone.value == ""
                                        ? null
                                        : controller.selectedNumberPhone.value,
                                onChanged: (newValue) {
                                  controller
                                      .setSelectedNumberPhone(newValue.toString());
                                },
                                items: controller.numberPhone
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
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: ElevatedButton(
                onPressed: () => Get.toNamed(Routes.PAYMENT_GATEWAY),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFf8BC342),
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 90,
                    // vertical: 5,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: Text(
                  'Beli Sekarang',
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
    );
  }
}

class kelompok extends StatelessWidget {
  const kelompok({
    super.key,
    required this.controller,
    required this.lable,
  });

  final TextEditingController controller;
  final String lable;

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
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(.5),
          fontSize: 14,
        ),
        hintText: lable,
        fillColor: Colors.white,
      ),
    );
  }
}

Widget buildItem(String tipe, String price) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 2.0),
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('• '),
        Text(
          tipe,
          style: TextStyle(
            color: Colors.black.withOpacity(.5),
            fontSize: 13,
          ),
        ),
        // const SizedBox(
        //   width: 20,
        // ),
        const Spacer(),
        Text(
          price,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.black.withOpacity(.5),
              fontSize: 12,
            ),
          ),
        ),
      ],
    ),
  );
}
