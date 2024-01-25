import 'package:forrest/features/core/domain/entity/entity.dart';
import 'package:forrest/main.dart';

abstract class CoreEvent {
  void call() {
    logger.i('event');
  }
}

class InitCoreEvent extends CoreEvent {}

class ToggleThemeCoreEvent extends CoreEvent {}

class LoadHabitsCoreEvent extends CoreEvent {}

class ToggleMoneyTrackerFeatureCoreEvent extends CoreEvent {}

class ToggleHabitStatusCoreEvent extends CoreEvent {
  ToggleHabitStatusCoreEvent({required this.habit});

  final HabitEntity habit;
}

class ToggleHabitLockCoreEvent extends CoreEvent {
  ToggleHabitLockCoreEvent({required this.habit});

  final HabitEntity habit;
}

class CreateHabitCoreEvent extends CoreEvent {
  CreateHabitCoreEvent({required this.habit});

  final HabitEntity habit;
}

class DeleteHabitCoreEvent extends CoreEvent {
  DeleteHabitCoreEvent({required this.habit});

  final HabitEntity habit;
}

class UpdateUserLocaleCoreEvent extends CoreEvent {
  UpdateUserLocaleCoreEvent({
    required this.locale,
  });

  final String? locale;
}
