import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class event_button extends StatelessWidget {
  const event_button({
    super.key,
    required this.icons,
    required this.title,
    required this.arg,
    required this.path,
  });

  final Icon icons;
  final int arg;
  final String title;
  final String path;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(
        path,
        arguments: arg,
      ),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xFFE0F5B4),
              borderRadius: BorderRadius.circular(9),
            ),
            child: icons,
          ),
          Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 9.5,
                fontWeight: FontWeight.w500,
                color: Color(0xFF469B4C),
              ),
            ),
          )
        ],
      ),
    );
  }
}
