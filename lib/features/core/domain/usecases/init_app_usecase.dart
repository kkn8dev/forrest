import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/entity.dart';
import '../repositories/core_repository.dart';
import 'usecase.dart';

class InitAppUseCase extends UseCase<bool, NoParams> {
  final CoreRepository coreRepository;

  InitAppUseCase(this.coreRepository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) async {
    return await coreRepository.initApp();
  }
}

class InitAppUseCaseParams extends Equatable {
  final String type;
  final String payload;

  const InitAppUseCaseParams({
    required this.type,
    required this.payload,
  });

  @override
  List<Object> get props => [type, payload];
}
