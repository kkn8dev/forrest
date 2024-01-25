import 'package:dartz/dartz.dart';

import 'package:forrest/features/core/domain/entity/entity.dart';
import 'package:forrest/features/core/domain/repositories/core_repository.dart';
import 'package:forrest/features/core/domain/usecases/usecase.dart';

class LoadHabitsUseCase extends UseCase<List<HabitEntity>, NoParams> {

  LoadHabitsUseCase(this.coreRepository);
  final CoreRepository coreRepository;

  @override
  Future<Either<Failure, List<HabitEntity>>> call(NoParams params) async {
    return await coreRepository.loadHabits();
  }
}
