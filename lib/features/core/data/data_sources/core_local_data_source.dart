import '../models/models.dart';

abstract class CoreLocalDataSource {
  Future<bool> initApp();

  Future<List<HabitModel>> loadHabits();

  Future<List<HabitModel>> toggleHabitStatus(HabitModel habitModel);

  Future<List<HabitModel>> createHabit(HabitModel habitModel);
}

const String coreBox = 'coreBox';
const String userId = 'userId';
const String locale = 'locale';
