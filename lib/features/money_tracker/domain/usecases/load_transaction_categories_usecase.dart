import 'package:dartz/dartz.dart';

import '../../../core/domain/entity/entity.dart';
import '../../../core/domain/usecases/usecases.dart';
import '../entity/entity.dart';
import '../repositories/money_tracker_repository.dart';

class LoadTransactionCategoriesUseCase
    extends UseCase<List<TransactionCategoryEntity>, NoParams> {
  final MoneyTrackerRepository moneyTrackerRepository;

  LoadTransactionCategoriesUseCase(this.moneyTrackerRepository);

  @override
  Future<Either<Failure, List<TransactionCategoryEntity>>> call(
      NoParams params) async {
    return await moneyTrackerRepository.loadTransactionCategories();
  }
}
