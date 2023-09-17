import 'package:hive_flutter/hive_flutter.dart';

import '../../../core/data/data_sources/data_sources.dart';
import '../../../core/data/models/models.dart';
import '../models/models.dart';
import 'money_tracker_local_data_source.dart';

class MoneyTrackerLocalDataSourceMock implements MoneyTrackerLocalDataSource {
  MoneyTrackerLocalDataSourceMock();

  @override
  Future<bool> initApp() async {
    try {
      await Hive.openBox(coreBox);
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
    var transactions = transactionsMock;
    return transactions;
  }

  @override
  Future<List<TransactionCategoryModel>> loadTransactionCategories() async {
    var categories = categoriesMock;
    return categories;
  }

  @override
  Future<List<TransactionModel>> editTransaction(
    TransactionModel transactionModel,
  ) async {
    print(transactionModel);
    var transactions = transactionsMock;
    var oldTransaction = transactions
        .firstWhere((element) => element.uuid == transactionModel.uuid);
    var index = transactions.indexOf(oldTransaction);
    var updatedTransaction = transactionModel;
    var a = [
      ...transactions.sublist(0, index),
      updatedTransaction,
      ...transactions.sublist(index + 1)
    ];
    return a;
  }

  @override
  Future<List<TransactionModel>> createTransaction(
      TransactionModel transactionModel) async {
    var transactions = transactionsMock;
    transactions.add(transactionModel);
    return transactions;
  }

  @override
  Future<List<TransactionModel>> deleteTransaction(
      TransactionModel transactionModel) async {
    var transactions = transactionsMock;
    var newTransactions = transactions
        .where((element) => element.uuid != transactionModel.uuid)
        .toList();
    return newTransactions;
  }

  @override
  Future<List<TransactionCategoryModel>> editTransactionCategory(
    TransactionCategoryModel transactionModel,
  ) async {
    var transactions = categoriesMock;
    var oldTransaction = transactions
        .firstWhere((element) => element.uuid == transactionModel.uuid);
    var index = transactions.indexOf(oldTransaction);
    var updatedTransaction = transactionModel;
    var a = [
      ...transactions.sublist(0, index),
      updatedTransaction,
      ...transactions.sublist(index + 1)
    ];
    return a;
  }

  @override
  Future<List<TransactionCategoryModel>> createTransactionCategory(
      TransactionCategoryModel transactionModel) async {
    var transactions = categoriesMock;
    transactions.add(transactionModel);
    return transactions;
  }

  @override
  Future<List<TransactionCategoryModel>> deleteTransactionCategory(
      TransactionCategoryModel transactionModel) async {
    var transactions = categoriesMock;
    var newTransactions = transactions
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
    category: TransactionCategoryModel(
      uuid: '123',
      color: 'ff00ff',
      label: 'purple',
    ),
  ),
];
