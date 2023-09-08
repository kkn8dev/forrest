import 'package:flutter/material.dart';

import '../../../../extensions/extensions.dart';
import '../../domain/entity/entity.dart';

class HabitItem extends StatefulWidget {
  const HabitItem({
    Key? key,
    required this.habit,
    required this.onHabitTap,
    required this.onDeleteHabit,
  }) : super(key: key);

  final HabitEntity habit;
  final Function(HabitEntity habitEntity) onHabitTap;
  final Function(HabitEntity habitEntity) onDeleteHabit;

  @override
  State<HabitItem> createState() => _HabitItemState();
}

class _HabitItemState extends State<HabitItem> {
  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;

    return GestureDetector(
      onTap: () {
        widget.onHabitTap(widget.habit);
      },
      onDoubleTap: () {
        widget.onDeleteHabit(widget.habit);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: appColors.primary,
        ),
        child: Row(
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
      ),
    );
  }
}
