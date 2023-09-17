import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_category_model.freezed.dart';
part 'transaction_category_model.g.dart';

@freezed
class TransactionCategoryModel with _$TransactionCategoryModel {
  const factory TransactionCategoryModel({
    required String uuid,
    required String color,
    required String label,
  }) = _TransactionCategoryModel;

  factory TransactionCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionCategoryModelFromJson(json);
}
