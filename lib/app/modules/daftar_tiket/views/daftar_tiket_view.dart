import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonokitri/app/routes/app_pages.dart';

import '../controllers/daftar_tiket_controller.dart';

class DaftarTiketView extends GetView<DaftarTiketController> {
  DaftarTiketView({Key? key}) : super(key: key);
  final List dropdownList = ['value 1', 'value 2', 'value 3', 'value 4', '+62'];
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
                        width: Get.width,
                        height: 100,
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                        "https://c4.wallpaperflare.com/wallpaper/210/493/172/landscape-photography-of-green-mountains-during-day-time-wallpaper-preview.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Longvilia Bromo',
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    '1 hari',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.black.withOpacity(.5),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const Text(
                                    'Rp 450.000',
                                    style: TextStyle(
                                      color: Color(0xFF477A3B),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Pilih Tanggal ',
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
                          controller: TextEditingController(
                              text: controller.selectedDate.value),
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            // labelText: 'Select Date',
                            hintText: 'DD/MM/YYYY',
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.calendar_today),
                              onPressed: () {
                                controller.selectDate(context);
                              },
                            ),
                          ),
                          readOnly:
                              true, // Agar TextField tidak dapat diubah secara manual
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Jumlah Orang',
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
                          controller: TextEditingController(
                              text: controller.count.value.toString()),
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            // labelText: 'Select Date',
                            hintText: '0',
                            suffixIcon: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    controller.incremen();
                                  },
                                  child: const Icon(Icons.arrow_drop_up),
                                ),
                                InkWell(
                                  onTap: () {
                                    if (controller.count.value > 0) {
                                      controller.count.value--;
                                    }
                                  },
                                  child: const Icon(Icons.arrow_drop_down),
                                ),
                              ],
                            ),
                          ),
                          readOnly:
                              true, // Agar TextField tidak dapat diubah secara manual
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Obx(
                        () => controller.count.value < 3
                            ? const Text(
                                'minimal 3 orang',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                                textAlign: TextAlign.left,
                              )
                            : const SizedBox(),
                      ),
                      const SizedBox(
                        height: 20,
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
                        () => DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          isExpanded: true,
                          hint: const Text('Pilih Tour Guide'),
                          value: controller.selectedTourGuide.value.isEmpty
                              ? null
                              : controller.selectedTourGuide.value,
                          onChanged: (String? newValue) {
                            controller.setSelectedtourGuide(newValue!);
                          },
                          items: controller.tourGuide
                              .map<DropdownMenuItem<String>>(
                                  (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Pilih Homestay',
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
                        () => DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          isExpanded: true,
                          hint: const Text('Pilih Homestay'),
                          value: controller.selectedHomestay.value.isEmpty
                              ? null
                              : controller.selectedHomestay.value,
                          onChanged: (String? newValue) {
                            controller.setSelectedHomestay(newValue!);
                          },
                          items: controller.listHomestay
                              .map<DropdownMenuItem<String>>(
                                  (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Catatan',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Catatan(
                        text:
                            'Tour Guide Sudah Termasuk dalam paket wisata',
                      ),
                      Catatan(
                        text: controller.desc,
                      ),
                      Catatan(
                        text: controller.desc,
                      ),
                      Catatan(
                        text: controller.desc,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: ElevatedButton(
                onPressed: () => Get.toNamed(Routes.DATA_DIRI),
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

class Catatan extends StatelessWidget {
  const Catatan({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              color: Color(0xFF8BC342),
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text(
                '1',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
