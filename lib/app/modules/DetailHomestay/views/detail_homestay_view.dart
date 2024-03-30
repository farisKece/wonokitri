import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonokitri/app/modules/DetailHomestay/views/facilities_card.dart';
import 'package:wonokitri/app/modules/detail_tour_package/views/picture_detail.dart';

import '../controllers/detail_homestay_controller.dart';

class DetailHomestayView extends GetView<DetailHomestayController> {
  const DetailHomestayView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                      width: 80,
                    ),
                    Text(
                      'Details',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      width: Get.width,
                      height: Get.width * .6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://c4.wallpaperflare.com/wallpaper/210/493/172/landscape-photography-of-green-mountains-during-day-time-wallpaper-preview.jpg',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 18),
                      child: Row(
                        children: [
                          Text(
                            'Wiantoko Homestay',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600)),
                          ),
                          const Spacer(),
                          GestureDetector(
                              onTap: () =>
                                  print('kalo di tekan nanti menjadi unmark'),
                              child: const Icon(
                                Icons.bookmark,
                                color: Colors.white,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () =>
                                print('harusnya nanti ada show snacbar dialog'),
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
                          'https://i.pinimg.com/564x/59/b9/54/59b954761d1eb3fcbbbe534ea254bc90.jpg',
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    PictureDetail(
                      img:
                          'https://i.pinimg.com/564x/59/b9/54/59b954761d1eb3fcbbbe534ea254bc90.jpg',
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    PictureDetail(
                      img:
                          'https://i.pinimg.com/564x/59/b9/54/59b954761d1eb3fcbbbe534ea254bc90.jpg',
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    PictureDetail(
                      img:
                          'https://i.pinimg.com/564x/59/b9/54/59b954761d1eb3fcbbbe534ea254bc90.jpg',
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    PictureDetail(
                      img:
                          'https://i.pinimg.com/564x/59/b9/54/59b954761d1eb3fcbbbe534ea254bc90.jpg',
                    ),
                    SizedBox(
                      width: 7,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Wiantoko Homestay',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(fontSize: 20),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  controller.paragraf,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 13,
                      color: const Color(0xFF000000).withOpacity(.6),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Facilities',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 80,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.facilities.length,
                    itemBuilder: (context, index) {
                      final data = controller.facilities[index];
                      return  FacilitiesCard(
                        icon: data.iconFacilities,
                        desc: data.desc,
                      );
                    },
                  ),
                ),
                Text(
                  controller.paragraf,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}


