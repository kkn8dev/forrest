import 'package:dartz/dartz.dart';

import '../entity/entity.dart';

abstract class CoreRepository {
  Future<Either<Failure, bool>> initApp();
}
