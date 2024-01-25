import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:forrest/features/core/domain/entity/entity.dart';
import 'package:forrest/features/core/domain/usecases/usecases.dart';
import 'package:forrest/features/money_tracker/domain/entity/entity.dart';
import 'package:forrest/features/money_tracker/domain/repositories/money_tracker_repository.dart';

class CreateTransactionCategoryUseCase extends UseCase<
    List<TransactionCategoryEntity>, CreateTransactionCategoryUseCaseParams> {

  CreateTransactionCategoryUseCase(this.moneyTrackerRepository);
  final MoneyTrackerRepository moneyTrackerRepository;

  @override
  Future<Either<Failure, List<TransactionCategoryEntity>>> call(
      CreateTransactionCategoryUseCaseParams params,) async {
    return await moneyTrackerRepository
        .createTransactionCategory(params.transaction);
  }
}

class CreateTransactionCategoryUseCaseParams extends Equatable {

  const CreateTransactionCategoryUseCaseParams({
    required this.transaction,
  });
  final TransactionCategoryEntity transaction;

  @override
  List<Object> get props => [transaction];
}
