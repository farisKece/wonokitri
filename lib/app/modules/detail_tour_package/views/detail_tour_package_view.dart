import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonokitri/app/modules/detail_tour_package/views/picture_detail.dart';
import 'package:wonokitri/app/modules/detail_tour_package/views/tracker.dart';
import '../controllers/detail_tour_package_controller.dart';

class DetailTourPackageView extends GetView<DetailTourPackageController> {
  const DetailTourPackageView({Key? key}) : super(key: key);
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
                            'Javanica Bromo',
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
                      more: '4+',
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
                  'Javanica Bromo',
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
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Schedule',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          '1 hari',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Color(
                                0xFF8BC342,
                              ),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  width: Get.width,
                  height: Get.width * 1.1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        Tracker(
                          isFirst: true,
                          isLast: false,
                          isPast: true,
                          eventCard: Text(
                            'Check In',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                          ),
                          timeCard: Text(
                            '01:00',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(fontSize: 14)),
                          ),
                        ),
                        Tracker(
                          isFirst: false,
                          isLast: false,
                          isPast: false,
                          eventCard: Text(
                            'Sunrise Bromo',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                          ),
                          timeCard: Text(
                            '02:30',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(fontSize: 14)),
                          ),
                        ),
                        Tracker(
                          isFirst: false,
                          isLast: false,
                          isPast: false,
                          eventCard: Text(
                            'Bromo Mountain',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                          ),
                          timeCard: Text(
                            '06:00',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(fontSize: 14)),
                          ),
                        ),
                        Tracker(
                          isFirst: false,
                          isLast: false,
                          isPast: false,
                          eventCard: Text(
                            'Cafe Edelwiss Wonokitri',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                          ),
                          timeCard: Text(
                            '11:00',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(fontSize: 14)),
                          ),
                        ),
                        Tracker(
                          isFirst: false,
                          isLast: true,
                          isPast: false,
                          eventCard: Text(
                            'Sruni Souvenir',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                          ),
                          timeCard: Text(
                            '11:00',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(fontSize: 14)),
                          ),
                        ),
                      ],
                    ),
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFf8BC342),
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 120,
                      vertical: 20,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'Book Now',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
