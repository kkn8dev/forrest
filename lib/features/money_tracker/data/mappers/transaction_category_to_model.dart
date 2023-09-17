import '../../domain/entity/entity.dart';
import '../models/models.dart';
import 'mappers.dart';

TransactionCategoryModel transactionCategoryToModel(
    TransactionCategoryEntity categoryEntity) {
  var transactionModel = TransactionCategoryModel(
    uuid: categoryEntity.uuid,
    color: categoryEntity.color.toHex(),
    label: categoryEntity.label,
  );
  return transactionModel;
}
