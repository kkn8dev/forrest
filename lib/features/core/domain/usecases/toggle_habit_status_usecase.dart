import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:forrest/features/core/domain/entity/entity.dart';
import 'package:forrest/features/core/domain/repositories/core_repository.dart';
import 'package:forrest/features/core/domain/usecases/usecase.dart';

class ToggleHabitStatusUseCase
    extends UseCase<List<HabitEntity>, ToggleHabitStatusUseCaseParams> {

  ToggleHabitStatusUseCase(this.coreRepository);
  final CoreRepository coreRepository;

  @override
  Future<Either<Failure, List<HabitEntity>>> call(
      ToggleHabitStatusUseCaseParams params,) async {
    return await coreRepository.toggleHabitStatus(params.habit);
  }
}

class ToggleHabitStatusUseCaseParams extends Equatable {

  const ToggleHabitStatusUseCaseParams({
    required this.habit,
  });
  final HabitEntity habit;

  @override
  List<Object> get props => [habit];
}
