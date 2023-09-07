import 'package:forrest/features/core/domain/entity/entity.dart';

abstract class CoreEvent {}

class InitCoreEvent extends CoreEvent {}

class LoadHabitsCoreEvent extends CoreEvent {}

class ToggleHabitStatusCoreEvent extends CoreEvent {
  ToggleHabitStatusCoreEvent({required this.habit});

  final HabitEntity habit;
}

class CreateHabitCoreEvent extends CoreEvent {
  CreateHabitCoreEvent({required this.habit});

  final HabitEntity habit;
}
