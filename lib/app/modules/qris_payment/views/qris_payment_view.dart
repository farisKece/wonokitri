import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:wonokitri/app/routes/app_pages.dart';

import '../controllers/qris_payment_controller.dart';

class QrisPaymentView extends GetView<QrisPaymentController> {
  const QrisPaymentView({Key? key}) : super(key: key);
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
                    width: Get.width * .12,
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
                      const Center(
                        child: Text(
                          'Tiket Wisata Edelweis Wonokitri',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          'Selesaikan pembayaran anda via QRIS dalam waktu yang telah ditentukan untuk mendapatkan tiket.',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black.withOpacity(.6)),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Center(child: Image.asset("assets/qris.png")),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(child: Image.asset("assets/barcode.png")),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: Get.width,
                        height: 130,
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
                                width: 103,
                                height: 103,
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
                                    '13 Maret 2024',
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
                                    'Rp 1.350.000',
                                    style: TextStyle(
                                      color: Color(0xFF477A3B),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    height: 30,
                                    // width: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: const Text(
                                      'Belum dibayar',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Sisa Waktu :',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SlideCountdown(
                            duration: const Duration(hours: 1, minutes: 14),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            slideDirection: SlideDirection.up,
                            icon: const Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.watch_later,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xFF8BC342),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: Text(
                        'Buka aplikasi mobile banking atau e-payment lainnya yang telah mendukung QRIS, lalu arahkan gambar QR Code untuk menyelesaikan proses pembayaran Tiket wisata',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black.withOpacity(.6)),
                      )),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  controller.showDialogOtomatically();
                  // showPaymentDialog(context); => ini nanti tinggal di uncomment aja kalo mau pake dialog nya

                  Get.toNamed(Routes.E_TICKET, arguments: controller.isDialogVisible);
                },
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

  void showPaymentDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.cancel,
                color: Colors.red,
                size: 100,
              ),
              SizedBox(height: 16),
              Text(
                'not yet paid off',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "You still haven't completed your payment.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          actions: [
            Center(
                child: InkWell(
              onTap: () => Get.back(),
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(child: Text('OK', style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),),),
              ),
            )),
          ],
        );
      },
    );
  }
}
