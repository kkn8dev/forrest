import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:forrest/features/core/domain/entity/entity.dart';
import 'package:forrest/features/core/domain/repositories/core_repository.dart';
import 'package:forrest/features/core/domain/usecases/usecase.dart';

class CreateHabitUseCase
    extends UseCase<List<HabitEntity>, CreateHabitUseCaseParams> {

  CreateHabitUseCase(this.coreRepository);
  final CoreRepository coreRepository;

  @override
  Future<Either<Failure, List<HabitEntity>>> call(
      CreateHabitUseCaseParams params,) async {
    return await coreRepository.createHabit(params.habit);
  }
}

class CreateHabitUseCaseParams extends Equatable {

  const CreateHabitUseCaseParams({
    required this.habit,
  });
  final HabitEntity habit;

  @override
  List<Object> get props => [habit];
}
