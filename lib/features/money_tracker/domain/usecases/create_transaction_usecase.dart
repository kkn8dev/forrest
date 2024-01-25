import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:forrest/features/core/domain/entity/entity.dart';
import 'package:forrest/features/core/domain/usecases/usecases.dart';
import 'package:forrest/features/money_tracker/domain/entity/entity.dart';
import 'package:forrest/features/money_tracker/domain/repositories/money_tracker_repository.dart';

class CreateTransactionUseCase
    extends UseCase<List<TransactionEntity>, CreateTransactionUseCaseParams> {

  CreateTransactionUseCase(this.moneyTrackerRepository);
  final MoneyTrackerRepository moneyTrackerRepository;

  @override
  Future<Either<Failure, List<TransactionEntity>>> call(
      CreateTransactionUseCaseParams params,) async {
    return await moneyTrackerRepository.createTransaction(params.transaction);
  }
}

class CreateTransactionUseCaseParams extends Equatable {

  const CreateTransactionUseCaseParams({
    required this.transaction,
  });
  final TransactionEntity transaction;

  @override
  List<Object> get props => [transaction];
}
