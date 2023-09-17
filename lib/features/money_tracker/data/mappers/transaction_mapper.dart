import '../../domain/entity/entity.dart';
import '../models/models.dart';
import 'mappers.dart';

TransactionEntity transactionMapper(TransactionModel model) {
  TransactionCategoryEntity? category;
  TransactionCategoryModel? modelCategory = model.category;
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
