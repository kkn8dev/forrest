import 'package:dartz/dartz.dart';

import 'package:forrest/features/core/domain/entity/entity.dart';
import 'package:forrest/features/core/domain/usecases/usecases.dart';
import 'package:forrest/features/money_tracker/domain/entity/entity.dart';
import 'package:forrest/features/money_tracker/domain/repositories/money_tracker_repository.dart';

class LoadTransactionsUseCase
    extends UseCase<List<TransactionEntity>, NoParams> {

  LoadTransactionsUseCase(this.moneyTrackerRepository);
  final MoneyTrackerRepository moneyTrackerRepository;

  @override
  Future<Either<Failure, List<TransactionEntity>>> call(NoParams params) async {
    return await moneyTrackerRepository.loadTransactions();
  }
}
