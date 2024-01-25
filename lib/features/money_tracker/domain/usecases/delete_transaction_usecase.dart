import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:forrest/features/core/domain/entity/entity.dart';
import 'package:forrest/features/core/domain/usecases/usecases.dart';
import 'package:forrest/features/money_tracker/domain/entity/entity.dart';
import 'package:forrest/features/money_tracker/domain/repositories/money_tracker_repository.dart';

class DeleteTransactionUseCase
    extends UseCase<List<TransactionEntity>, DeleteTransactionUseCaseParams> {

  DeleteTransactionUseCase(this.moneyTrackerRepository);
  final MoneyTrackerRepository moneyTrackerRepository;

  @override
  Future<Either<Failure, List<TransactionEntity>>> call(
      DeleteTransactionUseCaseParams params,) async {
    return await moneyTrackerRepository.deleteTransaction(params.transaction);
  }
}

class DeleteTransactionUseCaseParams extends Equatable {

  const DeleteTransactionUseCaseParams({
    required this.transaction,
  });
  final TransactionEntity transaction;

  @override
  List<Object> get props => [transaction];
}
