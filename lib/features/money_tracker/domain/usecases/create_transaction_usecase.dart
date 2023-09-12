import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../core/domain/entity/entity.dart';
import '../../../core/domain/usecases/usecases.dart';
import '../entity/entity.dart';
import '../repositories/money_tracker_repository.dart';

class CreateTransactionUseCase
    extends UseCase<List<TransactionEntity>, CreateTransactionUseCaseParams> {
  final MoneyTrackerRepository moneyTrackerRepository;

  CreateTransactionUseCase(this.moneyTrackerRepository);

  @override
  Future<Either<Failure, List<TransactionEntity>>> call(
      CreateTransactionUseCaseParams params) async {
    return await moneyTrackerRepository.createTransaction(params.transaction);
  }
}

class CreateTransactionUseCaseParams extends Equatable {
  final TransactionEntity transaction;

  const CreateTransactionUseCaseParams({
    required this.transaction,
  });

  @override
  List<Object> get props => [transaction];
}
