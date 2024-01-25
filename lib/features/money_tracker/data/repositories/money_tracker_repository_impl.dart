import 'package:dartz/dartz.dart';
import 'package:forrest/features/core/data/models/models.dart';
import 'package:forrest/features/core/domain/entity/entity.dart';
import 'package:forrest/features/money_tracker/data/data_sources/data_sources.dart';
import 'package:forrest/features/money_tracker/data/mappers/mappers.dart';
import 'package:forrest/features/money_tracker/domain/entity/entity.dart';
import 'package:forrest/features/money_tracker/domain/repositories/money_tracker_repository.dart';

class MoneyTrackerRepositoryImpl implements MoneyTrackerRepository {

  MoneyTrackerRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });
  final MoneyTrackerRemoteDataSource remoteDataSource;
  final MoneyTrackerLocalDataSource localDataSource;

  @override
  Future<Either<Failure, bool>> initApp() async {
    await remoteDataSource.initApp();
    return const Right(true);
  }

  @override
  Future<Either<Failure, List<TransactionEntity>>> loadTransactions() async {
    try {
      final result = await localDataSource.loadTransactions();
      return Right(result.map(transactionMapper).toList());
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
      final result = await localDataSource.createTransaction(
        transactionToModel(transactionEntity),
      );
      return Right(result.map(transactionMapper).toList());
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
      final result = await localDataSource.deleteTransaction(
        transactionToModel(transactionEntity),
      );
      return Right(result.map(transactionMapper).toList());
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
      final result = await localDataSource.editTransaction(
        transactionToModel(transactionEntity),
      );
      return Right(result.map(transactionMapper).toList());
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
      final result = await localDataSource.createTransactionCategory(
        transactionCategoryToModel(categoryEntity),
      );
      return Right(result.map(transactionCategoryMapper).toList());
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
      final result = await localDataSource.deleteTransactionCategory(
        transactionCategoryToModel(categoryEntity),
      );
      return Right(result.map(transactionCategoryMapper).toList());
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
      final result = await localDataSource.editTransactionCategory(
        transactionCategoryToModel(categoryEntity),
      );
      return Right(result.map(transactionCategoryMapper).toList());
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
      final result = await localDataSource.loadTransactionCategories();
      return Right(result.map(transactionCategoryMapper).toList());
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }
}
