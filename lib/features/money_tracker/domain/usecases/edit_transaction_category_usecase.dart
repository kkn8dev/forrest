import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../core/domain/entity/entity.dart';
import '../../../core/domain/usecases/usecases.dart';
import '../entity/entity.dart';
import '../repositories/money_tracker_repository.dart';

class EditTransactionCategoryUseCase extends UseCase<
    List<TransactionCategoryEntity>, EditTransactionCategoryUseCaseParams> {
  final MoneyTrackerRepository moneyTrackerRepository;

  EditTransactionCategoryUseCase(this.moneyTrackerRepository);

  @override
  Future<Either<Failure, List<TransactionCategoryEntity>>> call(
      EditTransactionCategoryUseCaseParams params) async {
    return await moneyTrackerRepository
        .editTransactionCategory(params.transaction);
  }
}

class EditTransactionCategoryUseCaseParams extends Equatable {
  final TransactionCategoryEntity transaction;

  const EditTransactionCategoryUseCaseParams({
    required this.transaction,
  });

  @override
  List<Object> get props => [transaction];
}
