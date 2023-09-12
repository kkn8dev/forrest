import 'package:dartz/dartz.dart';

import '../../../core/domain/entity/entity.dart';
import '../entity/entity.dart';

abstract class MoneyTrackerRepository {
  Future<Either<Failure, bool>> initApp();

  Future<Either<Failure, List<TransactionEntity>>> loadTransactions();

  Future<Either<Failure, List<TransactionEntity>>> createTransaction(
      TransactionEntity transactionEntity);

  Future<Either<Failure, List<TransactionEntity>>> deleteTransaction(
      TransactionEntity transactionEntity);

  Future<Either<Failure, List<TransactionEntity>>> editTransaction(
      TransactionEntity transactionEntity);
}
