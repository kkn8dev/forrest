import 'package:forrest/features/core/data/data_sources/data_sources.dart';
import 'package:forrest/features/core/data/models/models.dart';
import 'package:forrest/features/money_tracker/data/data_sources/money_tracker_local_data_source.dart';
import 'package:forrest/features/money_tracker/data/models/models.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MoneyTrackerLocalDataSourceMock implements MoneyTrackerLocalDataSource {
  MoneyTrackerLocalDataSourceMock();

  @override
  Future<bool> initApp() async {
    try {
      await Hive.openBox<String?>(coreBox);
      return true;
    } on HiveError catch (e) {
      throw StorageException(
        code: e.hashCode,
        message: e.message,
      );
    }
  }

  @override
  Future<List<TransactionModel>> loadTransactions() async {
    final transactions = transactionsMock;
    return transactions;
  }

  @override
  Future<List<TransactionCategoryModel>> loadTransactionCategories() async {
    const categories = categoriesMock;
    return categories;
  }

  @override
  Future<List<TransactionModel>> editTransaction(
    TransactionModel transactionModel,
  ) async {
    print(transactionModel);
    final transactions = transactionsMock;
    final oldTransaction = transactions
        .firstWhere((element) => element.uuid == transactionModel.uuid);
    final index = transactions.indexOf(oldTransaction);
    final updatedTransaction = transactionModel;
    final a = [
      ...transactions.sublist(0, index),
      updatedTransaction,
      ...transactions.sublist(index + 1),
    ];
    return a;
  }

  @override
  Future<List<TransactionModel>> createTransaction(
    TransactionModel transactionModel,
  ) async {
    final transactions = transactionsMock;
    transactions.add(transactionModel);
    return transactions;
  }

  @override
  Future<List<TransactionModel>> deleteTransaction(
    TransactionModel transactionModel,
  ) async {
    final transactions = transactionsMock;
    final newTransactions = transactions
        .where((element) => element.uuid != transactionModel.uuid)
        .toList();
    return newTransactions;
  }

  @override
  Future<List<TransactionCategoryModel>> editTransactionCategory(
    TransactionCategoryModel transactionModel,
  ) async {
    const transactions = categoriesMock;
    final oldTransaction = transactions
        .firstWhere((element) => element.uuid == transactionModel.uuid);
    final index = transactions.indexOf(oldTransaction);
    final updatedTransaction = transactionModel;
    final a = [
      ...transactions.sublist(0, index),
      updatedTransaction,
      ...transactions.sublist(index + 1),
    ];
    return a;
  }

  @override
  Future<List<TransactionCategoryModel>> createTransactionCategory(
    TransactionCategoryModel transactionModel,
  ) async {
    const transactions = categoriesMock;
    transactions.add(transactionModel);
    return transactions;
  }

  @override
  Future<List<TransactionCategoryModel>> deleteTransactionCategory(
    TransactionCategoryModel transactionModel,
  ) async {
    const transactions = categoriesMock;
    final newTransactions = transactions
        .where((element) => element.uuid != transactionModel.uuid)
        .toList();
    return newTransactions;
  }
}

const List<TransactionCategoryModel> categoriesMock = [
  TransactionCategoryModel(uuid: '123', color: 'ff00ff', label: 'purple'),
  TransactionCategoryModel(uuid: '1234', color: 'ffffff', label: 'white'),
  TransactionCategoryModel(uuid: '1235', color: 'ff0000', label: 'red'),
  TransactionCategoryModel(uuid: '1236', color: '00ff00', label: 'green'),
];
List<TransactionModel> transactionsMock = [
  TransactionModel(
    uuid: '123',
    amount: 500,
    text:
        'Using the Impeller rendering backend. Debug service listening on ws://127.0.0.1:50146/8ggMoH0QWLE=/ws Syncing files to device iPhone 14 Pro Max...',
    description:
        'Using the Impeller rendering backend. Debug service listening on ws://127.0.0.1:50146/8ggMoH0QWLE=/ws Syncing files to device iPhone 14 Pro Max...',
    source: 'source',
    transactionType: 'income',
    createdAt: DateTime.now(),
    category: const TransactionCategoryModel(
      uuid: '123',
      color: 'ff00ff',
      label: 'purple',
    ),
  ),
];
