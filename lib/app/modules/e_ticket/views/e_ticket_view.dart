import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wonokitri/app/routes/app_pages.dart';
import 'package:dotted_line/dotted_line.dart';

import '../controllers/e_ticket_controller.dart';

class ETicketView extends GetView<ETicketController> {
  const ETicketView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Stack(
        children: [
          ClipPath(
            clipper: HomeClipper(),
            child: Container(
              height: Get.width * .85,
              width: Get.width,
              color: const Color(0xFf8BC342),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
            child: Column(
              children: [
                Center(child: Image.asset('assets/logo.png')),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: 300,
                  height: Get.height * .7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        offset: const Offset(4.0, 4.0),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: Get.width * .48,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Longivilia\nBromo',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Image.asset(
                                    'assets/barcode.png',
                                    width: 80,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const Text('ET-MSNP-382973872937982'),
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: Text('Nama Pemesan'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: Text('Akhmad Aldi'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: Text('Item Rombongan'),
                      ),
                      buildItem('Wisatawan 3x'),
                      buildItem('Homestay 1x'),
                      buildItem('Homestay 1x'),
                      const Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: Text('Metode pembayaran QRIS'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const DottedLine(
                        direction: Axis.horizontal,
                        lineThickness: 2,
                        dashLength: 4,
                        dashColor: Color(0xFF8BC342),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Center(child: Text('Tanggal')),
                      const SizedBox(
                        height: 3,
                      ),
                      const Center(
                          child: Text(
                        '27 Sep 2023',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      const SizedBox(
                        height: 3,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: Text(
                          'Datang sesuai jadwal dan tunjukkan tiket ke loket',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Center(
                        child: Text(
                          'Rp 1.750.000',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF8BC342)),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      showPaymentDialog(context);
                      // Get.toNamed(Routes.PAYMENT_GATEWAY);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFf8BC342),
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 70,
                        // vertical: 5,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    child: const Text(
                      'Download E - Ticket',
                      style: TextStyle(
                          fontSize: 18,
                          // fontWeight: FontWeight.w600,
                          // color: Colors.white.withOpacity(.7),
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    )));
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
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(image: AssetImage('assets/icon_ticket.png')),
              SizedBox(height: 16),
              Text(
                'saved ticket',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Your E-Ticket has been successfully saved in your device.",
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
              onTap: () => Get.offAndToNamed(Routes.HOME),
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFF8BC342),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                  child: Text(
                    'OK',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
          ],
        );
      },
    );
  }
}

class HomeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.7);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height * 0.7);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

Widget buildItem(String tipe) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 2.0),
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          width: 18,
        ),
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
      ],
    ),
  );
}
