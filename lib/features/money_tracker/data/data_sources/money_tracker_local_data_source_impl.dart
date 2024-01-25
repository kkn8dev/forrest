import 'dart:convert';
import 'dart:io';

import 'package:forrest/features/core/data/data_sources/data_sources.dart';
import 'package:forrest/features/core/data/models/models.dart';
import 'package:forrest/features/money_tracker/data/data_sources/money_tracker_local_data_source.dart';
import 'package:forrest/features/money_tracker/data/models/models.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class MoneyTrackerLocalDataSourceImpl implements MoneyTrackerLocalDataSource {
  MoneyTrackerLocalDataSourceImpl({required this.storage});

  final HiveInterface storage;

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
    final transactions = readTransactions();
    return transactions;
  }

  @override
  Future<List<TransactionCategoryModel>> loadTransactionCategories() async {
    final categories = readTransactionCategories();
    return categories;
  }

  @override
  Future<List<TransactionModel>> editTransaction(
    TransactionModel transactionModel,
  ) async {
    final transactions = await readTransactions();
    final oldTransaction = transactions
        .firstWhere((element) => element.uuid == transactionModel.uuid);
    final index = transactions.indexOf(oldTransaction);
    final updatedTransaction = transactionModel;
    final a = [
      ...transactions.sublist(0, index),
      updatedTransaction,
      ...transactions.sublist(index + 1),
    ];
    await writeTransactions(a);
    return a;
  }

  @override
  Future<List<TransactionModel>> createTransaction(
    TransactionModel transactionModel,
  ) async {
    final transactions = await readTransactions();
    transactions.add(transactionModel);
    await writeTransactions(transactions);
    return transactions;
  }

  @override
  Future<List<TransactionModel>> deleteTransaction(
    TransactionModel transactionModel,
  ) async {
    final transactions = await readTransactions();
    final newTransactions = transactions
        .where((element) => element.uuid != transactionModel.uuid)
        .toList();
    await writeTransactions(newTransactions);
    return newTransactions;
  }

  @override
  Future<List<TransactionCategoryModel>> editTransactionCategory(
    TransactionCategoryModel transactionModel,
  ) async {
    final transactions = await readTransactionCategories();
    final oldTransaction = transactions
        .firstWhere((element) => element.uuid == transactionModel.uuid);
    final index = transactions.indexOf(oldTransaction);
    final updatedTransaction = transactionModel;
    final a = [
      ...transactions.sublist(0, index),
      updatedTransaction,
      ...transactions.sublist(index + 1),
    ];
    await writeTransactionCategories(a);
    return a;
  }

  @override
  Future<List<TransactionCategoryModel>> createTransactionCategory(
    TransactionCategoryModel transactionModel,
  ) async {
    final transactions = await readTransactionCategories();
    transactions.add(transactionModel);
    await writeTransactionCategories(transactions);
    return transactions;
  }

  @override
  Future<List<TransactionCategoryModel>> deleteTransactionCategory(
    TransactionCategoryModel transactionModel,
  ) async {
    final transactions = await readTransactionCategories();
    final newTransactions = transactions
        .where((element) => element.uuid != transactionModel.uuid)
        .toList();
    await writeTransactionCategories(newTransactions);
    return newTransactions;
  }
}

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}

Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/money_tracker_db.txt');
}

Future<List<TransactionModel>> readTransactions() async {
  try {
    final file = await _localFile;

    final content = await file.readAsString();
    final result = jsonDecode(content);
    final jsonMap = result;
    return (jsonMap as List)
        .map(
          (element) => TransactionModel.fromJson(
            element as Map<String, dynamic>,
          ),
        )
        .toList();
  } catch (e) {
    return [];
  }
}

Future<File> writeTransactions(List<TransactionModel> transactions) async {
  final file = await _localFile;
  final result = jsonEncode(transactions);

  return file.writeAsString(result);
}

Future<File> get _categoriesLocalFile async {
  final path = await _localPath;
  return File('$path/categories_db.txt');
}

Future<List<TransactionCategoryModel>> readTransactionCategories() async {
  try {
    final file = await _categoriesLocalFile;

    final content = await file.readAsString();
    final result = jsonDecode(content);
    final jsonMap = result;
    return (jsonMap as List)
        .map(
          (element) => TransactionCategoryModel.fromJson(
            element as Map<String, dynamic>,
          ),
        )
        .toList();
  } catch (e) {
    return [];
  }
}

Future<File> writeTransactionCategories(
  List<TransactionCategoryModel> transactions,
) async {
  final file = await _categoriesLocalFile;
  final result = jsonEncode(transactions);

  return file.writeAsString(result);
}
