import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class available_package extends StatelessWidget {
  const available_package({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: 105,
      decoration: BoxDecoration(
        color: const Color(0xFf8BC342),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(color: Colors.white, fontSize: 11),
          ),
        ),
      ),
    );
  }
}
