import 'package:forrest/features/money_tracker/data/mappers/mappers.dart';
import 'package:forrest/features/money_tracker/data/models/models.dart';
import 'package:forrest/features/money_tracker/domain/entity/entity.dart';

TransactionModel transactionToModel(TransactionEntity transactionEntity) {
  final category = transactionEntity.category;
  TransactionCategoryModel? transactionCategoryModel;
  if (category != null) {
    transactionCategoryModel = TransactionCategoryModel(
      uuid: category.uuid,
      color: category.color.toHex(),
      label: category.label,
    );
  }
  final transactionModel = TransactionModel(
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
        transactionEntity.year, transactionEntity.month, transactionEntity.day,),
  );
  return transactionModel;
}
