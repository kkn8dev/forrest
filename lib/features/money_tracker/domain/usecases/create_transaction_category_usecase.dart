import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../core/domain/entity/entity.dart';
import '../../../core/domain/usecases/usecases.dart';
import '../entity/entity.dart';
import '../repositories/money_tracker_repository.dart';

class CreateTransactionCategoryUseCase extends UseCase<
    List<TransactionCategoryEntity>, CreateTransactionCategoryUseCaseParams> {
  final MoneyTrackerRepository moneyTrackerRepository;

  CreateTransactionCategoryUseCase(this.moneyTrackerRepository);

  @override
  Future<Either<Failure, List<TransactionCategoryEntity>>> call(
      CreateTransactionCategoryUseCaseParams params) async {
    return await moneyTrackerRepository
        .createTransactionCategory(params.transaction);
  }
}

class CreateTransactionCategoryUseCaseParams extends Equatable {
  final TransactionCategoryEntity transaction;

  const CreateTransactionCategoryUseCaseParams({
    required this.transaction,
  });

  @override
  List<Object> get props => [transaction];
}
