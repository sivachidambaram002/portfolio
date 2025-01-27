import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle headerTextStyle() {
    return GoogleFonts.mukta(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }

  static TextStyle montserratStyle(
      {required Color color, double fontsize = 24}) {
    return GoogleFonts.montserrat(
        color: color, fontWeight: FontWeight.w800, fontSize: fontsize);
  }

  static TextStyle headingStyles({double fontSize = 36, color = Colors.white}) {
    return GoogleFonts.rubikMoonrocks(
      fontSize: fontSize,
      fontWeight: FontWeight.w800,
      color: color,
      letterSpacing: 2,
    );
  }

  static TextStyle normalStyle({Color color = Colors.white}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: color,
      letterSpacing: 1.7,
    );
  }
}
