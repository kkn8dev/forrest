import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/entity.dart';

part 'core_state.freezed.dart';

@freezed
class CoreState with _$CoreState {
  factory CoreState([
    String? id,
    String? locale,
    Failure? unknownError,
    @Default(true) bool isMoneyTrackerAvailable,
    @Default([]) List<HabitEntity> habits,
  ]) = _CoreState;
}
