import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../core/domain/entity/entity.dart';
import '../../../core/domain/usecases/usecases.dart';
import '../entity/entity.dart';
import '../repositories/money_tracker_repository.dart';

class DeleteTransactionCategoryUseCase extends UseCase<
    List<TransactionCategoryEntity>, DeleteTransactionCategoryUseCaseParams> {
  final MoneyTrackerRepository moneyTrackerRepository;

  DeleteTransactionCategoryUseCase(this.moneyTrackerRepository);

  @override
  Future<Either<Failure, List<TransactionCategoryEntity>>> call(
      DeleteTransactionCategoryUseCaseParams params) async {
    return await moneyTrackerRepository
        .deleteTransactionCategory(params.transaction);
  }
}

class DeleteTransactionCategoryUseCaseParams extends Equatable {
  final TransactionCategoryEntity transaction;

  const DeleteTransactionCategoryUseCaseParams({
    required this.transaction,
  });

  @override
  List<Object> get props => [transaction];
}
