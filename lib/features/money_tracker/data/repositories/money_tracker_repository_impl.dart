import 'package:dartz/dartz.dart';

import '../../../core/data/models/models.dart';
import '../../../core/domain/entity/entity.dart';
import '../../domain/entity/entity.dart';
import '../../domain/repositories/money_tracker_repository.dart';
import '../data_sources/data_sources.dart';
import '../mappers/mappers.dart';
import '../models/models.dart';

class MoneyTrackerRepositoryImpl implements MoneyTrackerRepository {
  final MoneyTrackerRemoteDataSource remoteDataSource;
  final MoneyTrackerLocalDataSource localDataSource;

  MoneyTrackerRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, bool>> initApp() async {
    remoteDataSource.initApp();
    return const Right(true);
  }

  @override
  Future<Either<Failure, List<TransactionEntity>>> loadTransactions() async {
    try {
      var result = await localDataSource.loadTransactions();
      return Right(result.map((e) => transactionMapper(e)).toList());
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, List<TransactionEntity>>> createTransaction(
    TransactionEntity transactionEntity,
  ) async {
    try {
      var transactionModel = TransactionModel(
        uuid: transactionEntity.uuid,
        text: transactionEntity.text,
        amount: transactionEntity.amount,
        description: transactionEntity.description,
        source: transactionEntity.source,
        transactionType:
            transactionEntity.transactionType == TransactionType.income
                ? 'income'
                : 'outcome',
        createdAt: DateTime(transactionEntity.year, transactionEntity.month,
            transactionEntity.day),
      );
      var result = await localDataSource.createTransaction(transactionModel);
      return Right(result.map((e) => transactionMapper(e)).toList());
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, List<TransactionEntity>>> deleteTransaction(
    TransactionEntity transactionEntity,
  ) async {
    try {
      var transactionModel = TransactionModel(
        uuid: transactionEntity.uuid,
        text: transactionEntity.text,
        amount: transactionEntity.amount,
        description: transactionEntity.description,
        transactionType:
            transactionEntity.transactionType == TransactionType.income
                ? 'income'
                : 'outcome',
        source: transactionEntity.source,
        createdAt: DateTime(transactionEntity.year, transactionEntity.month,
            transactionEntity.day),
      );
      var result = await localDataSource.deleteTransaction(transactionModel);
      return Right(result.map((e) => transactionMapper(e)).toList());
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, List<TransactionEntity>>> editTransaction(
    TransactionEntity transactionEntity,
  ) async {
    try {
      var transactionModel = TransactionModel(
        uuid: transactionEntity.uuid,
        text: transactionEntity.text,
        amount: transactionEntity.amount,
        description: transactionEntity.description,
        source: transactionEntity.source,
        transactionType:
            transactionEntity.transactionType == TransactionType.income
                ? 'income'
                : 'outcome',
        createdAt: DateTime(transactionEntity.year, transactionEntity.month,
            transactionEntity.day),
      );
      var result = await localDataSource.editTransaction(transactionModel);
      return Right(result.map((e) => transactionMapper(e)).toList());
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, List<TransactionCategoryEntity>>>
      createTransactionCategory(
    TransactionCategoryEntity transactionEntity,
  ) async {
    try {
      var transactionModel = TransactionCategoryModel(
        uuid: transactionEntity.uuid,
        color: transactionEntity.color.toHex(),
        label: transactionEntity.label,
      );
      var result =
          await localDataSource.createTransactionCategory(transactionModel);
      return Right(result.map((e) => transactionCategoryMapper(e)).toList());
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, List<TransactionCategoryEntity>>>
      deleteTransactionCategory(
    TransactionCategoryEntity transactionEntity,
  ) async {
    try {
      var transactionModel = TransactionCategoryModel(
        uuid: transactionEntity.uuid,
        color: transactionEntity.color.toHex(),
        label: transactionEntity.label,
      );
      var result =
          await localDataSource.deleteTransactionCategory(transactionModel);
      return Right(result.map((e) => transactionCategoryMapper(e)).toList());
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, List<TransactionCategoryEntity>>>
      editTransactionCategory(
    TransactionCategoryEntity transactionEntity,
  ) async {
    try {
      var transactionModel = TransactionCategoryModel(
        uuid: transactionEntity.uuid,
        color: transactionEntity.color.toHex(),
        label: transactionEntity.label,
      );
      var result =
          await localDataSource.editTransactionCategory(transactionModel);
      return Right(result.map((e) => transactionCategoryMapper(e)).toList());
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, List<TransactionCategoryEntity>>>
      loadTransactionCategories() async {
    try {
      var result = await localDataSource.loadTransactionCategories();
      return Right(result.map((e) => transactionCategoryMapper(e)).toList());
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }
}
