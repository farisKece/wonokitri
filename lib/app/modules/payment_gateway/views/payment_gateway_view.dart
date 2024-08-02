import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonokitri/app/routes/app_pages.dart';

import '../controllers/payment_gateway_controller.dart';

class PaymentGatewayView extends GetView<PaymentGatewayController> {
  const PaymentGatewayView({Key? key}) : super(key: key);
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
                    width: Get.width * .3,
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
                            'Metode Pembayaran',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          payment_metode(
                            controller: controller,
                            lable: 'Cash',
                            desc: 'Bayar langsung di loket',
                            valueRadio: 'Cash',
                            icons: Icons.money,
                          ),
                          payment_metode(
                            controller: controller,
                            lable: 'QRIS',
                            desc: 'Scan QRIS dengan m-banking atau e-wallet',
                            valueRadio: 'Transfer',
                            icons: Icons.qr_code_2_rounded,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Divider(
                        color: Colors.black.withOpacity(.1),
                        thickness: 1.5,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Syarat dan Ketentuan',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Catatan(text: 'Menjaga kebersihan tempat wisata'),
                      const SizedBox(
                        height: 5,
                      ),
                      const Catatan(text: 'Ikuti saran intruksi petugas'),
                      const SizedBox(
                        height: 5,
                      ),
                      const Catatan(
                          text:
                              'Tiket yang sudah dibayar tidak dapat dikembalikan'),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => Checkbox(
                              value: controller.isChecked.value,
                              activeColor: const Color(0xFF8BC342),
                              onChanged: (newBool) {
                                controller.isChecked.value = newBool!;
                              },
                            ),
                          ),
                          Text(
                            'Saya dan/atau kelompok saya\ntelah membaca, memahami,\nmenyetujui dan bertanggung jawab\natas segala risiko berdasarkan\nseluruh syarat & ketentuan yang\nditetapkan di atas',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black.withOpacity(.5),
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: ElevatedButton(
                onPressed: () => Get.toNamed(Routes.QRIS_PAYMENT),
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

class payment_metode extends StatelessWidget {
  const payment_metode({
    super.key,
    required this.controller,
    required this.lable,
    required this.desc,
    required this.valueRadio,
    required this.icons,
  });

  final PaymentGatewayController controller;
  final String lable;
  final String desc;
  final String valueRadio;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: const Offset(4.0, 4.0),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icons,
            size: 50,
            color: Colors.green,
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            lable,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            desc,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(() => Radio<String>(
                value: valueRadio,
                groupValue: controller.selectedPayment.value,
                onChanged: (value) {
                  controller.selectedPayment.value = value!;
                },
              )),
        ],
      ),
    );
  }
}

Widget buildItem(String tipe, String price) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 2.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('• '),
        Text(
          tipe,
          style: TextStyle(
            color: Colors.black.withOpacity(.5),
            fontSize: 13,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
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
