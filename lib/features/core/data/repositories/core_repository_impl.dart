import 'package:dartz/dartz.dart';
import 'package:forrest/features/core/data/data_sources/data_sources.dart';
import 'package:forrest/features/core/data/mappers/mappers.dart';
import 'package:forrest/features/core/data/models/models.dart';
import 'package:forrest/features/core/domain/entity/entity.dart';
import 'package:forrest/features/core/domain/repositories/core_repository.dart';

class CoreRepositoryImpl implements CoreRepository {

  CoreRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });
  final CoreRemoteDataSource remoteDataSource;
  final CoreLocalDataSource localDataSource;

  @override
  Future<Either<Failure, bool>> initApp() async {
    await remoteDataSource.initApp();
    return const Right(true);
  }

  @override
  Future<Either<Failure, List<HabitEntity>>> loadHabits() async {
    try {
      final result = await localDataSource.loadHabits();
      return Right(result.map(habitMapper).toList());
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, List<HabitEntity>>> toggleHabitStatus(
      HabitEntity habitEntity,) async {
    try {
      final habitModel = HabitModel(
        uuid: habitEntity.uuid,
        isCompleted: habitEntity.isCompleted,
        isLocked: habitEntity.isLocked,
        text: habitEntity.text,
        createdAt:
        DateTime(habitEntity.year, habitEntity.month, habitEntity.day),
      );
      final result = await localDataSource.toggleHabitStatus(habitModel);
      return Right(result.map(habitMapper).toList());
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, List<HabitEntity>>> toggleHabitLock(
      HabitEntity habitEntity,) async {
    try {
      final habitModel = HabitModel(
        uuid: habitEntity.uuid,
        isCompleted: habitEntity.isCompleted,
        isLocked: habitEntity.isLocked,
        text: habitEntity.text,
        createdAt:
        DateTime(habitEntity.year, habitEntity.month, habitEntity.day),
      );
      final result = await localDataSource.toggleHabitLock(habitModel);
      return Right(result.map(habitMapper).toList());
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, List<HabitEntity>>> createHabit(
      HabitEntity habitEntity,) async {
    try {
      final habitModel = HabitModel(
        uuid: habitEntity.uuid,
        isCompleted: habitEntity.isCompleted,
        isLocked: habitEntity.isLocked,
        text: habitEntity.text,
        createdAt:
        DateTime(habitEntity.year, habitEntity.month, habitEntity.day),
      );
      final result = await localDataSource.createHabit(habitModel);
      return Right(result.map(habitMapper).toList());
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, List<HabitEntity>>> deleteHabit(
      HabitEntity habitEntity,) async {
    try {
      final habitModel = HabitModel(
        uuid: habitEntity.uuid,
        isCompleted: habitEntity.isCompleted,
        isLocked: habitEntity.isLocked,
        text: habitEntity.text,
        createdAt:
        DateTime(habitEntity.year, habitEntity.month, habitEntity.day),
      );
      final result = await localDataSource.deleteHabit(habitModel);
      return Right(result.map(habitMapper).toList());
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }
}
