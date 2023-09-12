import '../../domain/entity/entity.dart';

abstract class CoreEvent {}

class InitCoreEvent extends CoreEvent {}

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
