import 'package:forrest/features/money_tracker/data/models/models.dart';

abstract class MoneyTrackerLocalDataSource {
  Future<bool> initApp();

  Future<List<TransactionModel>> loadTransactions();

  Future<List<TransactionModel>> createTransaction(
      TransactionModel transactionModel,);

  Future<List<TransactionModel>> deleteTransaction(
      TransactionModel transactionModel,);

  Future<List<TransactionModel>> editTransaction(
      TransactionModel transactionModel,);

  Future<List<TransactionCategoryModel>> loadTransactionCategories();

  Future<List<TransactionCategoryModel>> createTransactionCategory(
      TransactionCategoryModel transactionModel,);

  Future<List<TransactionCategoryModel>> deleteTransactionCategory(
      TransactionCategoryModel transactionModel,);

  Future<List<TransactionCategoryModel>> editTransactionCategory(
      TransactionCategoryModel transactionModel,);
}
