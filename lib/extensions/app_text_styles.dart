import 'package:flutter/material.dart';

@immutable
class AppTextStyles extends ThemeExtension<AppTextStyles> {
  const AppTextStyles({
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
    required this.h5,
    required this.p1,
    required this.p2,
    required this.p3,
    required this.p4,
    required this.tag1,
    required this.button1,
    required this.button2,
    required this.btn7,
    required this.btn8,
  });

  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle h4;
  final TextStyle h5;
  final TextStyle p1;
  final TextStyle p2;
  final TextStyle p3;
  final TextStyle p4;
  final TextStyle tag1;
  final TextStyle button1;
  final TextStyle button2;
  final TextStyle btn7;
  final TextStyle btn8;

  @override
  AppTextStyles copyWith({
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? h4,
    TextStyle? h5,
    TextStyle? p1,
    TextStyle? p2,
    TextStyle? p3,
    TextStyle? p4,
    TextStyle? tag1,
    TextStyle? button1,
    TextStyle? button2,
    TextStyle? btn7,
    TextStyle? btn8,
  }) {
    return AppTextStyles(
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      h3: h3 ?? this.h3,
      h4: h4 ?? this.h4,
      h5: h5 ?? this.h5,
      p1: p1 ?? this.p1,
      p2: p2 ?? this.p2,
      p3: p3 ?? this.p3,
      p4: p4 ?? this.p4,
      tag1: tag1 ?? this.tag1,
      button1: button1 ?? this.button1,
      button2: button2 ?? this.button2,
      btn7: btn7 ?? this.btn7,
      btn8: btn8 ?? this.btn8,
    );
  }

  @override
  AppTextStyles lerp(ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) {
      return this;
    }
    return AppTextStyles(
      h1: TextStyle.lerp(h1, other.h1, t) ?? h1,
      h2: TextStyle.lerp(h2, other.h2, t) ?? h2,
      h3: TextStyle.lerp(h3, other.h3, t) ?? h3,
      h4: TextStyle.lerp(h4, other.h4, t) ?? h4,
      h5: TextStyle.lerp(h5, other.h5, t) ?? h5,
      p1: TextStyle.lerp(p1, other.p1, t) ?? p1,
      p2: TextStyle.lerp(p2, other.p2, t) ?? p2,
      p3: TextStyle.lerp(p3, other.p3, t) ?? p3,
      p4: TextStyle.lerp(p4, other.p4, t) ?? p4,
      tag1: TextStyle.lerp(tag1, other.tag1, t) ?? tag1,
      button1: TextStyle.lerp(button1, other.button1, t) ?? button1,
      button2: TextStyle.lerp(button2, other.button2, t) ?? button2,
      btn7: TextStyle.lerp(btn7, other.btn7, t) ?? btn7,
      btn8: TextStyle.lerp(btn8, other.btn8, t) ?? btn8,
    );
  }

  // Optional
  @override
  String toString() => 'MyTextStyles('
      'h1: $h1,'
      'h2: $h2,'
      'h3: $h3,'
      'h4: $h4,'
      'h5: $h5,'
      'p1: $p1,'
      'p2: $p2,'
      'p3: $p3,'
      'p4: $p4,'
      'tag1: $tag1,'
      'button1: $button1,'
      'button2: $button2,'
      'btn7: $btn7,'
      'btn8: $btn8,'
      ')';
}
