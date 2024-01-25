import 'package:forrest/features/money_tracker/data/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    required String uuid,
    required int amount,
    required String text,
    required String description,
    required String source,
    required String transactionType,
    required DateTime createdAt, TransactionCategoryModel? category,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}
