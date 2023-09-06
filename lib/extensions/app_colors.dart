import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.black,
    required this.white,
    required this.gray,
    required this.darkBlue,
  });

  final Color black;
  final Color white;
  final Color gray;
  final Color darkBlue;

  @override
  AppColors copyWith({
    Color? black,
    Color? white,
    Color? gray,
    Color? darkBlue,
  }) {
    return AppColors(
      black: this.black,
      white: this.white,
      gray: this.gray,
      darkBlue: this.darkBlue,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      black: Color.lerp(black, other.black, t) ?? black,
      white: Color.lerp(white, other.white, t) ?? white,
      gray: Color.lerp(gray, other.gray, t) ?? gray,
      darkBlue: Color.lerp(darkBlue, other.darkBlue, t) ?? darkBlue,
    );
  }

  // Optional
  @override
  String toString() => 'MyColors';
}
