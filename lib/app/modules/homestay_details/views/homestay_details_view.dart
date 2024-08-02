import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonokitri/app/modules/detail_tour_package/views/information_details.dart';
import 'package:wonokitri/app/modules/detail_tour_package/views/picture_detail.dart';

import '../controllers/homestay_details_controller.dart';

class HomestayDetailsView extends GetView<HomestayDetailsController> {
  const HomestayDetailsView({Key? key}) : super(key: key);
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
                      Row(
                        children: [
                          Text(
                            'Wanda Homestay',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(fontSize: 20),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(),
                          Obx(
                            () => GestureDetector(
                              onTap: () {
                                controller.isSavedTourPackage.toggle();
                                print(controller.isSavedTourPackage.value);
                              },
                              child: controller.isSavedTourPackage.value
                                  ? const Icon(
                                      Icons.favorite,
                                      color: Color(0xFF8BC342),
                                    )
                                  : const Icon(Icons.favorite_border),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.share),
                          )
                        ],
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
                        'Fasilitas',
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
                      Column(
                        children: [
                          buildItem('Tempat Parkir Mobil'),
                          buildItem('Restoran'),
                          buildItem('Wifi'),
                          buildItem('Layanan Kamar 24 jam'),
                          buildItem('Air Panas'),
                          buildItem('Resepsionis 24 jam'),
                        ],
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
                      Text(
                        controller.nb2,
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
                        'Informasi Tambahan',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          buildItem2('1', 'Membawa Jaket tebal'),
                          buildItem2('2',
                              'Membawa obat obatan bagi penderita penyakit khusus'),
                        ],
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
          ],
        ),
      ),
    );
  }
}

Widget buildItem(String tipe) {
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
      ],
    ),
  );
}

Widget buildItem2(String number, String tipe) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 2.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$number. '),
        Expanded(
          child: Text(
            tipe,
            style: TextStyle(
              color: Colors.black.withOpacity(.5),
              fontSize: 13,
            ),
          ),
        ),
      ],
    ),
  );
}
