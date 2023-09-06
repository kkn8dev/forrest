import 'package:flutter/material.dart';

import '../../../../extensions/extensions.dart';

class Button4 extends StatefulWidget {
  const Button4({
    Key? key,
    required this.label,
    this.isDisabled = false,
    this.onTap,
  }) : super(key: key);

  final String label;
  final bool isDisabled;
  final Function()? onTap;

  @override
  State<Button4> createState() => _Button4State();
}

class _Button4State extends State<Button4> {
  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;

    return GestureDetector(
      onTap: () {
        if (!widget.isDisabled && widget.onTap != null) {
          widget.onTap!();
        }
      },
      child: Container(
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: widget.isDisabled ? const Color(0xff9C9C9C) : null,
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 12),
              color: Color(0x33000000),
              spreadRadius: 0,
              blurRadius: 24,
            ),
          ],
        ),
        child: Center(
          child: Text(
            widget.label,
            style: textStyles.button1.copyWith(
              color: appColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
