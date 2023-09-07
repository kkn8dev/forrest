import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/entity.dart';

part 'core_state.freezed.dart';

@freezed
class CoreState with _$CoreState {
  factory CoreState([
    String? id,
    String? locale,
    Failure? unknownError,
    @Default(habitsDump) List<HabitEntity> habits,
  ]) = _CoreState;
}

const habitsDump = [
  HabitEntity(
    isCompleted: false,
    text: 'Buy mild',
    year: 2023,
    month: 9,
    day: 8,
  ),
  HabitEntity(
    isCompleted: true,
    text: 'Buy milk and coffee',
    year: 2023,
    month: 9,
    day: 8,
  ),
  HabitEntity(
    isCompleted: false,
    text: 'Buy mild',
    year: 2023,
    month: 9,
    day: 8,
  ),
];
