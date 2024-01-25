import 'package:dartz/dartz.dart';

import 'package:forrest/features/core/domain/entity/entity.dart';
import 'package:forrest/features/core/domain/usecases/usecases.dart';
import 'package:forrest/features/money_tracker/domain/entity/entity.dart';
import 'package:forrest/features/money_tracker/domain/repositories/money_tracker_repository.dart';

class LoadTransactionCategoriesUseCase
    extends UseCase<List<TransactionCategoryEntity>, NoParams> {

  LoadTransactionCategoriesUseCase(this.moneyTrackerRepository);
  final MoneyTrackerRepository moneyTrackerRepository;

  @override
  Future<Either<Failure, List<TransactionCategoryEntity>>> call(
      NoParams params,) async {
    return await moneyTrackerRepository.loadTransactionCategories();
  }
}
