import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FacilitiesCard extends StatelessWidget {
  const FacilitiesCard({
    super.key,
    required this.icon,
    required this.desc,
  });

  final IconData icon;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 9),
      child: Container(
        width: 70,
        height: 80,
        decoration: BoxDecoration(
            color: const Color(0xFFA2B2FF).withOpacity(.16),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: const Color(0xFFB8B8B8),
              size: 40,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              desc,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Color(0xFFB8B8B8),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}