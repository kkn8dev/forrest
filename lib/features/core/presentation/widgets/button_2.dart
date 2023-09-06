import 'package:flutter/material.dart';

import '../../../../extensions/extensions.dart';

class Button2 extends StatefulWidget {
  const Button2({
    Key? key,
    required this.label,
    this.isActive = false,
    this.onTap,
  }) : super(key: key);

  final String label;
  final bool isActive;
  final Function()? onTap;

  @override
  State<Button2> createState() => _Button2State();
}

class _Button2State extends State<Button2> {
  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;

    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: widget.isActive ? null : appColors.gray,
        ),
        child: Center(
          child: Text(
            widget.label,
            style: textStyles.button1.copyWith(
              color: widget.isActive ? appColors.white : appColors.black,
            ),
          ),
        ),
      ),
    );
  }
}
