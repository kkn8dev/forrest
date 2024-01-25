import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:forrest/extensions/extensions.dart';
import 'package:forrest/features/core/domain/entity/entity.dart';

class HabitItem extends StatefulWidget {
  const HabitItem({
    required this.habit, required this.onHabitTap, required this.onHabitDoubleTap, required this.onHabitLongTap, super.key,
  });

  final HabitEntity habit;
  final Function(HabitEntity habitEntity) onHabitTap;
  final Function(HabitEntity habitEntity) onHabitDoubleTap;
  final Function(HabitEntity habitEntity) onHabitLongTap;

  @override
  State<HabitItem> createState() => _HabitItemState();
}

class _HabitItemState extends State<HabitItem> {
  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    final textStyles = Theme.of(context).extension<AppTextStyles>()!;

    return GestureDetector(
      onTap: () {
        widget.onHabitTap(widget.habit);
      },
      onDoubleTap: () {
        widget.onHabitDoubleTap(widget.habit);
      },
      onLongPress: () {
        widget.onHabitLongTap(widget.habit);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: appColors.primary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: widget.habit.isCompleted
                        ? appColors.success
                        : appColors.error,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  widget.habit.text,
                  style: textStyles.button1.copyWith(
                    color: appColors.white,
                  ),
                ),
              ],
            ),
            if (widget.habit.isLocked) const Icon(CupertinoIcons.lock_fill) else const Icon(CupertinoIcons.lock_open_fill),
          ],
        ),
      ),
    );
  }
}
