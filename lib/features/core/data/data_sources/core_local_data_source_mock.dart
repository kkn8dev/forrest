import 'package:forrest/features/core/data/data_sources/core_local_data_source.dart';
import 'package:forrest/features/core/data/models/models.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CoreLocalDataSourceMock implements CoreLocalDataSource {
  CoreLocalDataSourceMock();

  @override
  Future<bool> initApp() async {
    try {
      await Hive.openBox<String?>(coreBox);
      return true;
    } on HiveError catch (e) {
      throw StorageException(
        code: e.hashCode,
        message: e.message,
      );
    }
  }

  @override
  Future<List<HabitModel>> loadHabits() async {
    const habits = habitsMock;
    return habits;
  }

  @override
  Future<List<HabitModel>> toggleHabitStatus(HabitModel habitModel) async {
    const habits = habitsMock;
    final newHabit =
        habits.firstWhere((element) => element.uuid == habitModel.uuid);
    final index = habits.indexOf(habitModel);
    final updatedHabit = newHabit.copyWith(isCompleted: !newHabit.isCompleted);
    final a = [
      ...habits.sublist(0, index),
      updatedHabit,
      ...habits.sublist(index + 1),
    ];
    return a;
  }

  @override
  Future<List<HabitModel>> toggleHabitLock(HabitModel habitModel) async {
    const habits = habitsMock;
    final newHabit =
        habits.firstWhere((element) => element.uuid == habitModel.uuid);
    final index = habits.indexOf(habitModel);
    final updatedHabit = newHabit.copyWith(isLocked: !newHabit.isLocked);
    final a = [
      ...habits.sublist(0, index),
      updatedHabit,
      ...habits.sublist(index + 1),
    ];
    return a;
  }

  @override
  Future<List<HabitModel>> createHabit(HabitModel habitModel) async {
    throw ServerException();
  }

  @override
  Future<List<HabitModel>> deleteHabit(HabitModel habitModel) async {
    const habits = habitsMock;
    final newHabits =
        habits.where((element) => element.uuid != habitModel.uuid).toList();

    return newHabits;
  }
}

const List<HabitModel> habitsMock = [];
