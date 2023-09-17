import 'package:dartz/dartz.dart';

import '../../../core/data/models/models.dart';
import '../../../core/domain/entity/entity.dart';
import '../../domain/entity/entity.dart';
import '../../domain/repositories/money_tracker_repository.dart';
import '../data_sources/data_sources.dart';
import '../mappers/mappers.dart';

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
      var result = await localDataSource.createTransaction(
        transactionToModel(transactionEntity),
      );
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
      var result = await localDataSource.deleteTransaction(
        transactionToModel(transactionEntity),
      );
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
      var result = await localDataSource.editTransaction(
        transactionToModel(transactionEntity),
      );
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
    TransactionCategoryEntity categoryEntity,
  ) async {
    try {
      var result = await localDataSource.createTransactionCategory(
        transactionCategoryToModel(categoryEntity),
      );
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
    TransactionCategoryEntity categoryEntity,
  ) async {
    try {
      var result = await localDataSource.deleteTransactionCategory(
        transactionCategoryToModel(categoryEntity),
      );
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
    TransactionCategoryEntity categoryEntity,
  ) async {
    try {
      var result = await localDataSource.editTransactionCategory(
        transactionCategoryToModel(categoryEntity),
      );
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
