import 'package:dartz/dartz.dart';

import 'package:forrest/features/core/domain/entity/entity.dart';
import 'package:forrest/features/money_tracker/domain/entity/entity.dart';

abstract class MoneyTrackerRepository {
  Future<Either<Failure, bool>> initApp();

  Future<Either<Failure, List<TransactionEntity>>> loadTransactions();

  Future<Either<Failure, List<TransactionEntity>>> createTransaction(
      TransactionEntity transactionEntity,);

  Future<Either<Failure, List<TransactionEntity>>> deleteTransaction(
      TransactionEntity transactionEntity,);

  Future<Either<Failure, List<TransactionEntity>>> editTransaction(
      TransactionEntity transactionEntity,);

  Future<Either<Failure, List<TransactionCategoryEntity>>>
      loadTransactionCategories();

  Future<Either<Failure, List<TransactionCategoryEntity>>>
      createTransactionCategory(TransactionCategoryEntity transactionEntity);

  Future<Either<Failure, List<TransactionCategoryEntity>>>
      deleteTransactionCategory(TransactionCategoryEntity transactionEntity);

  Future<Either<Failure, List<TransactionCategoryEntity>>>
      editTransactionCategory(TransactionCategoryEntity transactionEntity);
}
