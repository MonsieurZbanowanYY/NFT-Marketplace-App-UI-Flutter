import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Padding buildCategory(String name, Color defaultFontColor, Size size) {
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: size.height * 0.025,
      horizontal: size.width * 0.075,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: GoogleFonts.poppins(
            color: defaultFontColor,
            fontSize: size.width * 0.05,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "See all",
          style: GoogleFonts.lato(
            color: defaultFontColor.withOpacity(0.7),
            fontSize: size.width * 0.045,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
