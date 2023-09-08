import 'package:dartz/dartz.dart';
import 'package:forrest/features/core/data/mappers/habit_mapper.dart';

import '../../domain/entity/entity.dart';
import '../../domain/repositories/core_repository.dart';
import '../data_sources/data_sources.dart';
import '../models/models.dart';

class CoreRepositoryImpl implements CoreRepository {
  final CoreRemoteDataSource remoteDataSource;
  final CoreLocalDataSource localDataSource;

  CoreRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, bool>> initApp() async {
    remoteDataSource.initApp();
    return const Right(true);
  }

  @override
  Future<Either<Failure, List<HabitEntity>>> loadHabits() async {
    try {
      var result = await localDataSource.loadHabits();
      return Right(result.map((e) => habitMapper(e)).toList());
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, List<HabitEntity>>> toggleHabitStatus(
      HabitEntity habitEntity) async {
    try {
      var habitModel = HabitModel(
        uuid: habitEntity.uuid,
        isCompleted: habitEntity.isCompleted,
        text: habitEntity.text,
        createdAt:
            DateTime(habitEntity.year, habitEntity.month, habitEntity.day),
      );
      var result = await localDataSource.toggleHabitStatus(habitModel);
      return Right(result.map((e) => habitMapper(e)).toList());
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, List<HabitEntity>>> createHabit(
    HabitEntity habitEntity,
  ) async {
    try {
      var habitModel = HabitModel(
        uuid: habitEntity.uuid,
        isCompleted: habitEntity.isCompleted,
        text: habitEntity.text,
        createdAt:
            DateTime(habitEntity.year, habitEntity.month, habitEntity.day),
      );
      var result = await localDataSource.createHabit(habitModel);
      return Right(result.map((e) => habitMapper(e)).toList());
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, List<HabitEntity>>> deleteHabit(
    HabitEntity habitEntity,
  ) async {
    try {
      var habitModel = HabitModel(
        uuid: habitEntity.uuid,
        isCompleted: habitEntity.isCompleted,
        text: habitEntity.text,
        createdAt:
            DateTime(habitEntity.year, habitEntity.month, habitEntity.day),
      );
      var result = await localDataSource.deleteHabit(habitModel);
      return Right(result.map((e) => habitMapper(e)).toList());
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }
}
