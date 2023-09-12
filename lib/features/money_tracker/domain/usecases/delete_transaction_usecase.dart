import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../core/domain/entity/entity.dart';
import '../../../core/domain/usecases/usecases.dart';
import '../entity/entity.dart';
import '../repositories/money_tracker_repository.dart';

class DeleteTransactionUseCase
    extends UseCase<List<TransactionEntity>, DeleteTransactionUseCaseParams> {
  final MoneyTrackerRepository moneyTrackerRepository;

  DeleteTransactionUseCase(this.moneyTrackerRepository);

  @override
  Future<Either<Failure, List<TransactionEntity>>> call(
      DeleteTransactionUseCaseParams params) async {
    return await moneyTrackerRepository.deleteTransaction(params.transaction);
  }
}

class DeleteTransactionUseCaseParams extends Equatable {
  final TransactionEntity transaction;

  const DeleteTransactionUseCaseParams({
    required this.transaction,
  });

  @override
  List<Object> get props => [transaction];
}
