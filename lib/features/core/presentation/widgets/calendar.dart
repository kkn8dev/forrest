import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:forrest/extensions/extensions.dart';

class Calendar extends StatefulWidget {
  const Calendar({
    required this.onDayPressed, required this.currentDay, super.key,
  });

  final Function(int day) onDayPressed;
  final int currentDay;

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>();
    final textStyles = Theme.of(context).extension<AppTextStyles>();
    final t = AppLocalizations.of(context)!;

    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: appColors?.primary,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  t.calendar_september,
                  style: textStyles?.button1.copyWith(
                    color: appColors?.white,
                  ),
                ),
                Text(
                  '2023',
                  style: textStyles?.button1.copyWith(
                    color: appColors?.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            SizedBox(
              height: 48,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  final i = index + 1;
                  return GestureDetector(
                    onTap: () {
                      widget.onDayPressed(i);
                    },
                    child: Text(
                      i.toString(),
                      style: textStyles?.h1.copyWith(
                        color: widget.currentDay == i
                            ? appColors?.black
                            : appColors?.white,
                      ),
                    ),
                  );
                },
                itemCount: 31,
                separatorBuilder: (_, __) {
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
