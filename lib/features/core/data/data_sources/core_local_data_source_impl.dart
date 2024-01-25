import 'dart:convert';
import 'dart:io';

import 'package:forrest/features/core/data/data_sources/core_local_data_source.dart';
import 'package:forrest/features/core/data/models/models.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class CoreLocalDataSourceImpl implements CoreLocalDataSource {
  CoreLocalDataSourceImpl({required this.storage});

  final HiveInterface storage;

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
    final habits = readHabits();
    return habits;
  }

  @override
  Future<List<HabitModel>> toggleHabitStatus(HabitModel habitModel) async {
    final habits = await readHabits();
    final newHabit =
        habits.firstWhere((element) => element.uuid == habitModel.uuid);
    final index = habits.indexOf(habitModel);
    final updatedHabit = newHabit.copyWith(isCompleted: !newHabit.isCompleted);
    final a = [
      ...habits.sublist(0, index),
      updatedHabit,
      ...habits.sublist(index + 1),
    ];
    await writeHabits(a);
    return a;
  }

  @override
  Future<List<HabitModel>> toggleHabitLock(HabitModel habitModel) async {
    final habits = await readHabits();
    final newHabit =
        habits.firstWhere((element) => element.uuid == habitModel.uuid);
    final index = habits.indexOf(habitModel);
    final updatedHabit = newHabit.copyWith(isLocked: !newHabit.isLocked);
    final a = [
      ...habits.sublist(0, index),
      updatedHabit,
      ...habits.sublist(index + 1),
    ];
    await writeHabits(a);
    return a;
  }

  @override
  Future<List<HabitModel>> createHabit(HabitModel habitModel) async {
    final habits = await readHabits();
    habits.add(habitModel);
    await writeHabits(habits);
    return habits;
  }

  @override
  Future<List<HabitModel>> deleteHabit(HabitModel habitModel) async {
    final habits = await readHabits();
    final newHabits =
        habits.where((element) => element.uuid != habitModel.uuid).toList();
    await writeHabits(newHabits);
    return newHabits;
  }
}

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}

Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/db.txt');
}

Future<List<HabitModel>> readHabits() async {
  try {
    final file = await _localFile;

    final content = await file.readAsString();
    final result = jsonDecode(content);
    final jsonMap = result as List<Map<String, dynamic>>;
    return jsonMap.map(HabitModel.fromJson).toList();
  } catch (e) {
    return [];
  }
}

Future<File> writeHabits(List<HabitModel> habits) async {
  final file = await _localFile;
  final result = jsonEncode(habits);

  return file.writeAsString(result);
}
