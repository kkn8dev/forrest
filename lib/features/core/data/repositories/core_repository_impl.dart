import 'package:dartz/dartz.dart';

import '../../domain/entity/entity.dart';
import '../../domain/repositories/core_repository.dart';
import '../data_sources/data_sources.dart';

class CoreRepositoryImpl implements CoreRepository {
  final CoreRemoteDataSource remoteDataSource;
  final CoreLocalDataSource localDataSource;

  CoreRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, bool>> initApp() async {
    return const Right(true);
  }
}
