import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:forrest/extensions/extensions.dart';

class LanguageItem extends StatelessWidget {
  const LanguageItem({
    required this.language, required this.translate, required this.isActive, required this.onTap, super.key,
  });

  final String language;
  final String translate;
  final bool isActive;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).extension<AppTextStyles>()!;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.5,
              color: const Color(0xffA5A5A5).withOpacity(0.5),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  language,
                  style: textStyles.h3,
                ),
                Text(translate, style: textStyles.h4),
              ],
            ),
            if (isActive) const Icon(CupertinoIcons.check_mark_circled),
          ],
        ),
      ),
    );
  }
}
