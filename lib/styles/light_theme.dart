import 'package:flutter/material.dart';

import '../extensions/extensions.dart';
import 'colors.dart';

ThemeData lightTheme = ThemeData(
  extensions: const [
    AppColors(
      black: AppColorsPalette.black,
      white: AppColorsPalette.white,
      gray: AppColorsPalette.gray,
      darkBlue: AppColorsPalette.darkBlue,
    ),
    AppTextStyles(
      h1: TextStyle(
        color: AppColorsPalette.black,
        fontSize: 32,
        height: 39 / 32,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
      ),
      h2: TextStyle(
        color: AppColorsPalette.black,
        fontSize: 24,
        height: 29 / 24,
        fontWeight: FontWeight.w500,
        fontFamily: 'Inter',
      ),
      h3: TextStyle(
        color: AppColorsPalette.black,
        fontSize: 20,
        height: 28 / 20,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
      ),
      h4: TextStyle(
        color: AppColorsPalette.black,
        fontSize: 16,
        height: 20 / 16,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
      ),
      h5: TextStyle(
        color: AppColorsPalette.black,
        fontSize: 20,
        height: 28 / 20,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
      ),
      p1: TextStyle(
        color: AppColorsPalette.black,
        fontSize: 14,
        height: 20 / 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
      ),
      p2: TextStyle(
        color: AppColorsPalette.black,
        fontSize: 14,
        height: 20 / 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
        letterSpacing: 14 * 0.175,
      ),
      p3: TextStyle(
        color: AppColorsPalette.black,
        fontSize: 10,
        height: 12 / 10,
        fontWeight: FontWeight.w500,
        fontFamily: 'Inter',
        letterSpacing: 0.06,
      ),
      p4: TextStyle(
        color: AppColorsPalette.black,
        fontSize: 20,
        height: 28 / 20,
        fontWeight: FontWeight.w500,
        fontFamily: 'Inter',
      ),
      tag1: TextStyle(
        color: AppColorsPalette.black,
        fontSize: 12,
        height: 14 / 12,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
      ),
      button1: TextStyle(
        color: AppColorsPalette.black,
        fontSize: 20,
        height: 20 / 20,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
      ),
      button2: TextStyle(
        color: AppColorsPalette.black,
        fontSize: 14,
        height: 20 / 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
      ),
      btn8: TextStyle(
        color: AppColorsPalette.black,
        fontSize: 18,
        height: 20 / 18,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
      ),
      btn7: TextStyle(
        color: AppColorsPalette.white,
        fontSize: 14,
        height: 20 / 14,
        fontWeight: FontWeight.w600,
        fontFamily: 'Inter',
      ),
    ),
  ],
);
