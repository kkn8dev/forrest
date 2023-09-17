import 'dart:convert';
import 'dart:io';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/data/data_sources/data_sources.dart';
import '../../../core/data/models/models.dart';
import '../models/models.dart';
import 'money_tracker_local_data_source.dart';

class MoneyTrackerLocalDataSourceImpl implements MoneyTrackerLocalDataSource {
  final HiveInterface storage;

  MoneyTrackerLocalDataSourceImpl({required this.storage});

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
    var transactions = readTransactions();
    return transactions;
  }

  @override
  Future<List<TransactionCategoryModel>> loadTransactionCategories() async {
    var categories = readTransactionCategories();
    return categories;
  }

  @override
  Future<List<TransactionModel>> editTransaction(
    TransactionModel transactionModel,
  ) async {
    var transactions = await readTransactions();
    var oldTransaction = transactions
        .firstWhere((element) => element.uuid == transactionModel.uuid);
    var index = transactions.indexOf(oldTransaction);
    var updatedTransaction = transactionModel;
    var a = [
      ...transactions.sublist(0, index),
      updatedTransaction,
      ...transactions.sublist(index + 1)
    ];
    writeTransactions(a);
    return a;
  }

  @override
  Future<List<TransactionModel>> createTransaction(
      TransactionModel transactionModel) async {
    var transactions = await readTransactions();
    transactions.add(transactionModel);
    writeTransactions(transactions);
    return transactions;
  }

  @override
  Future<List<TransactionModel>> deleteTransaction(
      TransactionModel transactionModel) async {
    var transactions = await readTransactions();
    var newTransactions = transactions
        .where((element) => element.uuid != transactionModel.uuid)
        .toList();
    writeTransactions(newTransactions);
    return newTransactions;
  }

  @override
  Future<List<TransactionCategoryModel>> editTransactionCategory(
    TransactionCategoryModel transactionModel,
  ) async {
    var transactions = await readTransactionCategories();
    var oldTransaction = transactions
        .firstWhere((element) => element.uuid == transactionModel.uuid);
    var index = transactions.indexOf(oldTransaction);
    var updatedTransaction = transactionModel;
    var a = [
      ...transactions.sublist(0, index),
      updatedTransaction,
      ...transactions.sublist(index + 1)
    ];
    writeTransactionCategories(a);
    return a;
  }

  @override
  Future<List<TransactionCategoryModel>> createTransactionCategory(
      TransactionCategoryModel transactionModel) async {
    var transactions = await readTransactionCategories();
    transactions.add(transactionModel);
    writeTransactionCategories(transactions);
    return transactions;
  }

  @override
  Future<List<TransactionCategoryModel>> deleteTransactionCategory(
      TransactionCategoryModel transactionModel) async {
    var transactions = await readTransactionCategories();
    var newTransactions = transactions
        .where((element) => element.uuid != transactionModel.uuid)
        .toList();
    writeTransactionCategories(newTransactions);
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
    var result = jsonDecode(content);
    final jsonMap = result;
    return (jsonMap as List)
        .map((element) => TransactionModel.fromJson(element))
        .toList();
  } catch (e) {
    return [];
  }
}

Future<File> writeTransactions(List<TransactionModel> transactions) async {
  final file = await _localFile;
  var result = jsonEncode(transactions);

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
    var result = jsonDecode(content);
    final jsonMap = result;
    return (jsonMap as List)
        .map((element) => TransactionCategoryModel.fromJson(element))
        .toList();
  } catch (e) {
    return [];
  }
}

Future<File> writeTransactionCategories(
    List<TransactionCategoryModel> transactions) async {
  final file = await _categoriesLocalFile;
  var result = jsonEncode(transactions);

  return file.writeAsString(result);
}
