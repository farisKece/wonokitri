import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class information_details extends StatelessWidget {
  const information_details({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: const Color(0xFF8BC342),
          size: 18,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: GoogleFonts.poppins(
            textStyle:
                const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
