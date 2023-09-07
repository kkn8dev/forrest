import 'dart:convert';
import 'dart:io';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import '../models/models.dart';
import 'core_local_data_source.dart';

class CoreLocalDataSourceImpl implements CoreLocalDataSource {
  final HiveInterface storage;

  CoreLocalDataSourceImpl({required this.storage});

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
    var habits = readHabits();
    return habits;
  }

  @override
  Future<List<HabitModel>> toggleHabitStatus(HabitModel habitModel) async {
    var habits = await readHabits();
    habits.add(habitModel);
    writeHabits(habits);
    return habits;
  }

  @override
  Future<List<HabitModel>> createHabit(HabitModel habitModel) async {
    var habits = await readHabits();
    habits.add(habitModel);
    writeHabits(habits);
    return habits;
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
    var result = jsonDecode(content);
    final jsonMap = result;
    return (jsonMap as List)
        .map((element) => HabitModel.fromJson(element))
        .toList();
  } catch (e) {
    return [];
  }
}

Future<File> writeHabits(List<HabitModel> habits) async {
  final file = await _localFile;
  var result = jsonEncode(habits);

  return file.writeAsString(result);
}
