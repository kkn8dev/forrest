import 'package:dartz/dartz.dart';

import '../../../core/domain/entity/entity.dart';
import '../../../core/domain/usecases/usecases.dart';
import '../entity/entity.dart';
import '../repositories/money_tracker_repository.dart';

class LoadTransactionsUseCase
    extends UseCase<List<TransactionEntity>, NoParams> {
  final MoneyTrackerRepository moneyTrackerRepository;

  LoadTransactionsUseCase(this.moneyTrackerRepository);

  @override
  Future<Either<Failure, List<TransactionEntity>>> call(NoParams params) async {
    return await moneyTrackerRepository.loadTransactions();
  }
}
