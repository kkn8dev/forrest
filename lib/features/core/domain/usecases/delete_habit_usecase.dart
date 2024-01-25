import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:forrest/features/core/domain/entity/entity.dart';
import 'package:forrest/features/core/domain/repositories/core_repository.dart';
import 'package:forrest/features/core/domain/usecases/usecase.dart';

class DeleteHabitUseCase
    extends UseCase<List<HabitEntity>, DeleteHabitUseCaseParams> {

  DeleteHabitUseCase(this.coreRepository);
  final CoreRepository coreRepository;

  @override
  Future<Either<Failure, List<HabitEntity>>> call(
      DeleteHabitUseCaseParams params,) async {
    return await coreRepository.deleteHabit(params.habit);
  }
}

class DeleteHabitUseCaseParams extends Equatable {

  const DeleteHabitUseCaseParams({
    required this.habit,
  });
  final HabitEntity habit;

  @override
  List<Object> get props => [habit];
}
