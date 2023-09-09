import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.black,
    required this.white,
    required this.gray,
    required this.darkBlue,
    required this.primary,
    required this.error,
    required this.success,
  });

  final Color black;
  final Color white;
  final Color gray;
  final Color darkBlue;
  final Color primary;
  final Color error;
  final Color success;

  @override
  AppColors copyWith({
    Color? black,
    Color? white,
    Color? gray,
    Color? darkBlue,
    Color? primary,
    Color? success,
    Color? error,
  }) {
    return AppColors(
      black: this.black,
      white: this.white,
      gray: this.gray,
      darkBlue: this.darkBlue,
      primary: this.primary,
      success: this.success,
      error: this.error,
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
      primary: Color.lerp(primary, other.primary, t) ?? primary,
      success: Color.lerp(success, other.success, t) ?? success,
      error: Color.lerp(error, other.error, t) ?? error,
    );
  }

  // Optional
  @override
  String toString() => 'MyColors';
}
