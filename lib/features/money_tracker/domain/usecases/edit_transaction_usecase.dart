import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../core/domain/entity/entity.dart';
import '../../../core/domain/usecases/usecases.dart';
import '../entity/entity.dart';
import '../repositories/money_tracker_repository.dart';

class EditTransactionUseCase
    extends UseCase<List<TransactionEntity>, EditTransactionUseCaseParams> {
  final MoneyTrackerRepository moneyTrackerRepository;

  EditTransactionUseCase(this.moneyTrackerRepository);

  @override
  Future<Either<Failure, List<TransactionEntity>>> call(
      EditTransactionUseCaseParams params) async {
    return await moneyTrackerRepository.editTransaction(params.transaction);
  }
}

class EditTransactionUseCaseParams extends Equatable {
  final TransactionEntity transaction;

  const EditTransactionUseCaseParams({
    required this.transaction,
  });

  @override
  List<Object> get props => [transaction];
}
