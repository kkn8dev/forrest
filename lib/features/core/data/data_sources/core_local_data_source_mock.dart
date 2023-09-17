import 'package:hive_flutter/hive_flutter.dart';

import '../models/models.dart';
import 'core_local_data_source.dart';

class CoreLocalDataSourceMock implements CoreLocalDataSource {
  CoreLocalDataSourceMock();

  @override
  Future<bool> initApp() async {
    try {
      await Hive.openBox(coreBox);
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
    var habits = habitsMock;
    return habits;
  }

  @override
  Future<List<HabitModel>> toggleHabitStatus(HabitModel habitModel) async {
    var habits = habitsMock;
    var newHabit =
        habits.firstWhere((element) => element.uuid == habitModel.uuid);
    var index = habits.indexOf(habitModel);
    var updatedHabit = newHabit.copyWith(isCompleted: !newHabit.isCompleted);
    var a = [
      ...habits.sublist(0, index),
      updatedHabit,
      ...habits.sublist(index + 1)
    ];
    return a;
  }

  @override
  Future<List<HabitModel>> toggleHabitLock(HabitModel habitModel) async {
    var habits = habitsMock;
    var newHabit =
        habits.firstWhere((element) => element.uuid == habitModel.uuid);
    var index = habits.indexOf(habitModel);
    var updatedHabit = newHabit.copyWith(isLocked: !newHabit.isLocked);
    var a = [
      ...habits.sublist(0, index),
      updatedHabit,
      ...habits.sublist(index + 1)
    ];
    return a;
  }

  @override
  Future<List<HabitModel>> createHabit(HabitModel habitModel) async {
    throw ServerException();
  }

  @override
  Future<List<HabitModel>> deleteHabit(HabitModel habitModel) async {
    var habits = habitsMock;
    var newHabits =
        habits.where((element) => element.uuid != habitModel.uuid).toList();

    return newHabits;
  }
}

const List<HabitModel> habitsMock = [];
