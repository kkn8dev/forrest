import 'package:forrest/features/money_tracker/data/mappers/mappers.dart';
import 'package:forrest/features/money_tracker/data/models/models.dart';
import 'package:forrest/features/money_tracker/domain/entity/entity.dart';

TransactionCategoryModel transactionCategoryToModel(
    TransactionCategoryEntity categoryEntity,) {
  final transactionModel = TransactionCategoryModel(
    uuid: categoryEntity.uuid,
    color: categoryEntity.color.toHex(),
    label: categoryEntity.label,
  );
  return transactionModel;
}
