import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'color.dart';

class TextStyles {
  static TextStyle get headingStyle => GoogleFonts.muli(
        textStyle: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w700),
      );
  static TextStyle get buttonStyle => GoogleFonts.muli(
        textStyle: TextStyle(
            fontSize: 18.0,
            color: AppColors.white,
            fontWeight: FontWeight.bold),
      );
  static TextStyle get baseTextStyle => GoogleFonts.muli(
        textStyle: TextStyle(
            fontSize: 20.0,
            color: AppColors.lightGrey,
            fontWeight: FontWeight.bold),
      );
  static TextStyle basedateStyle(Color color) {
    return GoogleFonts.muli(
      textStyle:
          TextStyle(fontSize: 15.0, color: color, fontWeight: FontWeight.bold),
    );
  }

  static TextStyle titleStyle(Color color) {
    return GoogleFonts.muli(
      textStyle:
          TextStyle(fontSize: 20.0, color: color, fontWeight: FontWeight.w600),
    );
  }
}
