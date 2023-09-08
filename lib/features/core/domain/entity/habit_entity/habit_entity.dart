import 'package:freezed_annotation/freezed_annotation.dart';

part 'habit_entity.freezed.dart';

@freezed
class HabitEntity with _$HabitEntity {
  const factory HabitEntity({
    required String uuid,
    required bool isCompleted,
    required String text,
    required int year,
    required int month,
    required int day,
  }) = _HabitEntity;
}
