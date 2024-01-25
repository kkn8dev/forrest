import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:forrest/features/core/domain/entity/entity.dart';
import 'package:forrest/features/core/domain/repositories/core_repository.dart';
import 'package:forrest/features/core/domain/usecases/usecase.dart';

class ToggleHabitLockUseCase
    extends UseCase<List<HabitEntity>, ToggleHabitLockUseCaseParams> {

  ToggleHabitLockUseCase(this.coreRepository);
  final CoreRepository coreRepository;

  @override
  Future<Either<Failure, List<HabitEntity>>> call(
      ToggleHabitLockUseCaseParams params,) async {
    return await coreRepository.toggleHabitLock(params.habit);
  }
}

class ToggleHabitLockUseCaseParams extends Equatable {

  const ToggleHabitLockUseCaseParams({
    required this.habit,
  });
  final HabitEntity habit;

  @override
  List<Object> get props => [habit];
}
