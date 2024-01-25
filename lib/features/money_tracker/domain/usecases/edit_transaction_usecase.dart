import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:forrest/features/core/domain/entity/entity.dart';
import 'package:forrest/features/core/domain/usecases/usecases.dart';
import 'package:forrest/features/money_tracker/domain/entity/entity.dart';
import 'package:forrest/features/money_tracker/domain/repositories/money_tracker_repository.dart';

class EditTransactionUseCase
    extends UseCase<List<TransactionEntity>, EditTransactionUseCaseParams> {

  EditTransactionUseCase(this.moneyTrackerRepository);
  final MoneyTrackerRepository moneyTrackerRepository;

  @override
  Future<Either<Failure, List<TransactionEntity>>> call(
      EditTransactionUseCaseParams params,) async {
    return await moneyTrackerRepository.editTransaction(params.transaction);
  }
}

class EditTransactionUseCaseParams extends Equatable {

  const EditTransactionUseCaseParams({
    required this.transaction,
  });
  final TransactionEntity transaction;

  @override
  List<Object> get props => [transaction];
}
