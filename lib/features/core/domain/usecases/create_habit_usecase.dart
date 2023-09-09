import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/entity.dart';
import '../repositories/core_repository.dart';
import 'usecase.dart';

class CreateHabitUseCase
    extends UseCase<List<HabitEntity>, CreateHabitUseCaseParams> {
  final CoreRepository coreRepository;

  CreateHabitUseCase(this.coreRepository);

  @override
  Future<Either<Failure, List<HabitEntity>>> call(
      CreateHabitUseCaseParams params) async {
    return await coreRepository.createHabit(params.habit);
  }
}

class CreateHabitUseCaseParams extends Equatable {
  final HabitEntity habit;

  const CreateHabitUseCaseParams({
    required this.habit,
  });

  @override
  List<Object> get props => [habit];
}
