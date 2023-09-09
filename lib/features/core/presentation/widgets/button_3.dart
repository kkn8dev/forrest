import 'package:flutter/material.dart';

import '../../../../extensions/extensions.dart';
import '../../../../styles/app_images.dart';

class Button3 extends StatefulWidget {
  const Button3({
    Key? key,
    this.isDisabled = false,
    this.isLoading = false,
    this.onTap,
  }) : super(key: key);

  final bool isDisabled;
  final bool isLoading;
  final Function()? onTap;

  @override
  State<Button3> createState() => _Button3State();
}

class _Button3State extends State<Button3> {
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
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: widget.isDisabled ? const Color(0xff9C9C9C) : null,
        ),
        child: Center(
          child: widget.isLoading
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 12),
                      height: 20,
                      width: 20,
                      child: const CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'translation.wait15seconds',
                      style: textStyles.btn8.copyWith(
                        color: appColors.white,
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.logoPng,
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '1',
                      style: textStyles.btn8.copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
