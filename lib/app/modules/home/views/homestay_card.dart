import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonokitri/app/routes/app_pages.dart';

class HomestayCard extends StatelessWidget {
  const HomestayCard({
    super.key,
    required this.img,
  });

  final String img;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.DETAIL_HOMESTAY),
      child: SizedBox(
        width: Get.width,
        height: 130,
        // color: Colors.red,
        child: Card(
          elevation: 7,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // Align children to the start and end of the row
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                        image: NetworkImage(
                          img,
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                ),
                Expanded(
                  // Use Expanded to allow the text to take up remaining space
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Align text to the left
                      children: [
                        Text(
                          'Wiantoko Homestay',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                            height: 5), // Add some spacing between the texts
                        Row(
                          mainAxisAlignment: MainAxisAlignment
                              .start, // Align the text to the left
                          children: [
                            Text(
                              '4.7',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(.5),
                              ),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            const Icon(
                              Icons.star,
                              color: Color(0xFFF9B50F),
                              size: 20,
                            ),
                            const Icon(
                              Icons.star,
                              color: Color(0xFFF9B50F),
                              size: 20,
                            ),
                            const Icon(
                              Icons.star,
                              color: Color(0xFFF9B50F),
                              size: 20,
                            ),
                            const Icon(
                              Icons.star,
                              color: Color(0xFFF9B50F),
                              size: 20,
                            ),
                            const Icon(
                              Icons.star,
                              color: Color(0xFFC4C4C4),
                              size: 20,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.black.withOpacity(.3),
                            ),
                            Text(
                              'Wonokitri Pasuruan',
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: Colors.black.withOpacity(.3),
                              ),
                            )
                          ],
                        )
                      ],
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
