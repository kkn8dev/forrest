import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:forrest/features/core/domain/entity/entity.dart';
import 'package:forrest/features/core/domain/usecases/usecases.dart';
import 'package:forrest/features/money_tracker/domain/entity/entity.dart';
import 'package:forrest/features/money_tracker/domain/repositories/money_tracker_repository.dart';

class DeleteTransactionCategoryUseCase extends UseCase<
    List<TransactionCategoryEntity>, DeleteTransactionCategoryUseCaseParams> {

  DeleteTransactionCategoryUseCase(this.moneyTrackerRepository);
  final MoneyTrackerRepository moneyTrackerRepository;

  @override
  Future<Either<Failure, List<TransactionCategoryEntity>>> call(
      DeleteTransactionCategoryUseCaseParams params,) async {
    return await moneyTrackerRepository
        .deleteTransactionCategory(params.transaction);
  }
}

class DeleteTransactionCategoryUseCaseParams extends Equatable {

  const DeleteTransactionCategoryUseCaseParams({
    required this.transaction,
  });
  final TransactionCategoryEntity transaction;

  @override
  List<Object> get props => [transaction];
}
