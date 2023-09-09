import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/entity.dart';
import '../repositories/core_repository.dart';
import 'usecase.dart';

class ToggleHabitLockUseCase
    extends UseCase<List<HabitEntity>, ToggleHabitLockUseCaseParams> {
  final CoreRepository coreRepository;

  ToggleHabitLockUseCase(this.coreRepository);

  @override
  Future<Either<Failure, List<HabitEntity>>> call(
      ToggleHabitLockUseCaseParams params) async {
    return await coreRepository.toggleHabitLock(params.habit);
  }
}

class ToggleHabitLockUseCaseParams extends Equatable {
  final HabitEntity habit;

  const ToggleHabitLockUseCaseParams({
    required this.habit,
  });

  @override
  List<Object> get props => [habit];
}
