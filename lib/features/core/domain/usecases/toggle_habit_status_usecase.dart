import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/entity.dart';
import '../repositories/core_repository.dart';
import 'usecase.dart';

class ToggleHabitStatusUseCase
    extends UseCase<List<HabitEntity>, ToggleHabitStatusUseCaseParams> {
  final CoreRepository coreRepository;

  ToggleHabitStatusUseCase(this.coreRepository);

  @override
  Future<Either<Failure, List<HabitEntity>>> call(
      ToggleHabitStatusUseCaseParams params) async {
    return await coreRepository.toggleHabitStatus(params.habit);
  }
}

class ToggleHabitStatusUseCaseParams extends Equatable {
  final HabitEntity habit;

  const ToggleHabitStatusUseCaseParams({
    required this.habit,
  });

  @override
  List<Object> get props => [habit];
}
