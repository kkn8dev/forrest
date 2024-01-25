import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:forrest/features/core/domain/entity/entity.dart';
import 'package:forrest/features/core/domain/repositories/core_repository.dart';
import 'package:forrest/features/core/domain/usecases/usecase.dart';

class InitAppUseCase extends UseCase<bool, NoParams> {

  InitAppUseCase(this.coreRepository);
  final CoreRepository coreRepository;

  @override
  Future<Either<Failure, bool>> call(NoParams params) async {
    return await coreRepository.initApp();
  }
}

class InitAppUseCaseParams extends Equatable {

  const InitAppUseCaseParams({
    required this.type,
    required this.payload,
  });
  final String type;
  final String payload;

  @override
  List<Object> get props => [type, payload];
}
