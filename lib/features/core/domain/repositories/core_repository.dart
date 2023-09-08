import 'package:dartz/dartz.dart';

import '../entity/entity.dart';

abstract class CoreRepository {
  Future<Either<Failure, bool>> initApp();

  Future<Either<Failure, List<HabitEntity>>> loadHabits();

  Future<Either<Failure, List<HabitEntity>>> toggleHabitStatus(
      HabitEntity habitEntity);

  Future<Either<Failure, List<HabitEntity>>> createHabit(
      HabitEntity habitEntity);

  Future<Either<Failure, List<HabitEntity>>> deleteHabit(
      HabitEntity habitEntity);
}
