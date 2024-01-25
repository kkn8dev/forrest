import 'package:forrest/features/money_tracker/data/mappers/mappers.dart';
import 'package:forrest/features/money_tracker/data/models/models.dart';
import 'package:forrest/features/money_tracker/domain/entity/entity.dart';

TransactionEntity transactionMapper(TransactionModel model) {
  TransactionCategoryEntity? category;
  final modelCategory = model.category;
  if (modelCategory != null) {
    category = TransactionCategoryEntity(
      uuid: modelCategory.uuid,
      color: HexColor.fromHex(modelCategory.color),
      label: modelCategory.label,
    );
  }
  return TransactionEntity(
    uuid: model.uuid,
    text: model.text,
    amount: model.amount,
    description: model.description,
    source: model.source,
    transactionType: model.transactionType == 'income'
        ? TransactionType.income
        : TransactionType.outcome,
    category: category,
    year: model.createdAt.year,
    month: model.createdAt.month,
    day: model.createdAt.day,
  );
}
