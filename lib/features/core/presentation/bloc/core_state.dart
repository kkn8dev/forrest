import 'package:forrest/features/core/domain/entity/entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_state.freezed.dart';

@freezed
class CoreState with _$CoreState {
  factory CoreState([
    String? id,
    String? locale,
    @Default('light') String theme,
    Failure? unknownError,
    @Default(true) bool isMoneyTrackerAvailable,
    @Default([]) List<HabitEntity> habits,
  ]) = _CoreState;
}
