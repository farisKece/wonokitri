import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonokitri/app/modules/detail_tour_package/views/available_package.dart';
import 'package:wonokitri/app/modules/detail_tour_package/views/information_details.dart';
import 'package:wonokitri/app/modules/detail_tour_package/views/picture_detail.dart';
import 'package:wonokitri/app/routes/app_pages.dart';
import '../controllers/detail_tour_package_controller.dart';

class DetailTourPackageView extends GetView<DetailTourPackageController> {
  const DetailTourPackageView({Key? key}) : super(key: key);
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
                  const SizedBox(
                    width: 65,
                  ),
                  Text(
                    'Details',
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
                        height: 30,
                      ),
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            width: Get.width,
                            height: Get.width * .59,
                            decoration: BoxDecoration(
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                    'https://c4.wallpaperflare.com/wallpaper/210/493/172/landscape-photography-of-green-mountains-during-day-time-wallpaper-preview.jpg',
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 18),
                            child: Row(
                              children: [
                                Text(
                                  'Javanica Bromo',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600)),
                                ),
                                const Spacer(),
                                GestureDetector(
                                    onTap: () => print(
                                        'kalo di tekan nanti menjadi unmark'),
                                    child: const Icon(
                                      Icons.bookmark,
                                      color: Colors.white,
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                GestureDetector(
                                  onTap: () => print(
                                      'harusnya nanti ada show snacbar dialog'),
                                  child: const Icon(
                                    Icons.share,
                                    color: Colors.white,
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
                      const Row(
                        children: [
                          PictureDetail(
                            img:
                                'https://i.pinimg.com/564x/65/65/3c/65653c4f792fa9c616ba096e5956a253.jpg',
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          PictureDetail(
                            img:
                                'https://i.pinimg.com/564x/65/65/3c/65653c4f792fa9c616ba096e5956a253.jpg',
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          PictureDetail(
                            img:
                                'https://i.pinimg.com/564x/65/65/3c/65653c4f792fa9c616ba096e5956a253.jpg',
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          PictureDetail(
                            img:
                                'https://i.pinimg.com/564x/65/65/3c/65653c4f792fa9c616ba096e5956a253.jpg',
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          PictureDetail(
                            img:
                                'https://i.pinimg.com/564x/65/65/3c/65653c4f792fa9c616ba096e5956a253.jpg',
                            more: '4+',
                          ),
                          SizedBox(
                            width: 7,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      Divider(
                        thickness: 2.5,
                        color: Colors.grey.withOpacity(.15),
                      ),
                      Text(
                        'Javanica Bromo',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(fontSize: 20),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'IDR. 350.000',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 16.5,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF8BC342))),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const information_details(
                        text: 'Desa Edelweiss wonokitri',
                        icon: Icons.location_on_outlined,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const information_details(
                          text: '1 Hari', icon: Icons.access_time),
                      const SizedBox(
                        height: 4,
                      ),
                      const information_details(
                          text: '3 Kali Dipesan', icon: Icons.shopping_cart),
                      const SizedBox(
                        height: 4,
                      ),
                      const information_details(
                        text: 'Tersedia dalam bahasa inggris',
                        icon: Icons.g_translate,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        children: [
                          available_package(text: 'Keluarga'),
                          SizedBox(
                            width: 2.5,
                          ),
                          available_package(text: 'Keluarga Besar'),
                          SizedBox(
                            width: 2.5,
                          ),
                          available_package(text: 'Keluarga Kecil'),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Divider(
                        thickness: 2.5,
                        color: Colors.grey.withOpacity(.15),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Text(
                        'Informasi Detail',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        controller.desc,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 13,
                            color: const Color(0xFF000000).withOpacity(.6),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Divider(
                        thickness: 2.5,
                        color: Colors.grey.withOpacity(.15),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Harap Diperhatikan',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        controller.attention,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 12,
                            color: const Color(0xFF000000).withOpacity(.6),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Divider(
                        thickness: 2.5,
                        color: Colors.grey.withOpacity(.15),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Informasi Tambahan',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        controller.nb,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 13,
                            color: const Color(0xFF000000).withOpacity(.6),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //bawah
                      //-----------------
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: ElevatedButton(
                onPressed: () => Get.toNamed(Routes.LOGIN),
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
                  'Beli Paket',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 20,
                    // fontWeight: FontWeight.w600,
                    // color: Colors.white.withOpacity(.7),
                    color: Colors.white
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
