import 'package:flutter/material.dart';

import '../../../../extensions/extensions.dart';

class Calendar extends StatefulWidget {
  const Calendar({
    Key? key,
    required this.onDayPressed,
    required this.currentDay,
  }) : super(key: key);

  final Function(int day) onDayPressed;
  final int currentDay;

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;

    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: appColors.primary,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'September',
                  style: textStyles.button1.copyWith(
                    color: appColors.white,
                  ),
                ),
                Text(
                  '2023',
                  style: textStyles.button1.copyWith(
                    color: appColors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            SizedBox(
              height: 48,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, i) {
                  return GestureDetector(
                    onTap: () {
                      widget.onDayPressed(i);
                    },
                    child: Text(
                      (i + 1).toString(),
                      style: textStyles.h1.copyWith(
                        color: widget.currentDay == i
                            ? appColors.black
                            : appColors.white,
                      ),
                    ),
                  );
                },
                itemCount: 31,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 16);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
