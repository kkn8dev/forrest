import '../../domain/entity/entity.dart';
import '../models/models.dart';
import 'mappers.dart';

TransactionModel transactionToModel(TransactionEntity transactionEntity) {
  var category = transactionEntity.category;
  TransactionCategoryModel? transactionCategoryModel;
  if (category != null) {
    transactionCategoryModel = TransactionCategoryModel(
      uuid: category.uuid,
      color: category.color.toHex(),
      label: category.label,
    );
  }
  var transactionModel = TransactionModel(
    uuid: transactionEntity.uuid,
    text: transactionEntity.text,
    amount: transactionEntity.amount,
    description: transactionEntity.description,
    source: transactionEntity.source,
    transactionType: transactionEntity.transactionType == TransactionType.income
        ? 'income'
        : 'outcome',
    category: transactionCategoryModel,
    createdAt: DateTime(
        transactionEntity.year, transactionEntity.month, transactionEntity.day),
  );
  return transactionModel;
}
