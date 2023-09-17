import 'package:dartz/dartz.dart';

import '../entity/entity.dart';
import '../repositories/core_repository.dart';
import 'usecase.dart';

class LoadHabitsUseCase extends UseCase<List<HabitEntity>, NoParams> {
  final CoreRepository coreRepository;

  LoadHabitsUseCase(this.coreRepository);

  @override
  Future<Either<Failure, List<HabitEntity>>> call(NoParams params) async {
    return await coreRepository.loadHabits();
  }
}
