import '../models/models.dart';

abstract class MoneyTrackerLocalDataSource {
  Future<bool> initApp();

  Future<List<TransactionModel>> loadTransactions();

  Future<List<TransactionModel>> createTransaction(
      TransactionModel transactionModel);

  Future<List<TransactionModel>> deleteTransaction(
      TransactionModel transactionModel);

  Future<List<TransactionModel>> editTransaction(
      TransactionModel transactionModel);
}
