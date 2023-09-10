import 'package:flutter/material.dart';

import '../../../../extensions/extensions.dart';

class Button1 extends StatefulWidget {
  const Button1({
    Key? key,
    required this.label,
    this.isDisabled = false,
    this.onTap,
  }) : super(key: key);

  final String label;
  final bool isDisabled;
  final Function()? onTap;

  @override
  State<Button1> createState() => _Button1State();
}

class _Button1State extends State<Button1> {
  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>();
    var textStyles = Theme.of(context).extension<AppTextStyles>();

    return GestureDetector(
      onTap: () {
        if (!widget.isDisabled && widget.onTap != null) {
          widget.onTap!();
        }
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: widget.isDisabled ? const Color(0xff9C9C9C) : null,
        ),
        child: Center(
          child: Text(
            widget.label,
            style: textStyles?.button1.copyWith(
              color: appColors?.primary,
            ),
          ),
        ),
      ),
    );
  }
}
