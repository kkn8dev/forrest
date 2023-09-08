import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/entity.dart';
import '../repositories/core_repository.dart';
import 'usecase.dart';

class DeleteHabitUseCase
    extends UseCase<List<HabitEntity>, DeleteHabitUseCaseParams> {
  final CoreRepository coreRepository;

  DeleteHabitUseCase(this.coreRepository);

  @override
  Future<Either<Failure, List<HabitEntity>>> call(
      DeleteHabitUseCaseParams params) async {
    return await coreRepository.deleteHabit(params.habit);
  }
}

class DeleteHabitUseCaseParams extends Equatable {
  final HabitEntity habit;

  const DeleteHabitUseCaseParams({
    required this.habit,
  });

  @override
  List<Object> get props => [habit];
}
