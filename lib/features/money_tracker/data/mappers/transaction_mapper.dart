import '../../domain/entity/entity.dart';
import '../models/models.dart';

TransactionEntity transactionMapper(TransactionModel model) {
  return TransactionEntity(
    uuid: model.uuid,
    text: model.text,
    amount: model.amount,
    description: model.description,
    source: model.source,
    transactionType: model.transactionType == 'income'
        ? TransactionType.income
        : TransactionType.outcome,
    year: model.createdAt.year,
    month: model.createdAt.month,
    day: model.createdAt.day,
  );
}
