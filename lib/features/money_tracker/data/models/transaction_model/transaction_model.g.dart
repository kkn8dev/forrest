// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionModel _$$_TransactionModelFromJson(Map<String, dynamic> json) =>
    _$_TransactionModel(
      uuid: json['uuid'] as String,
      amount: json['amount'] as int,
      text: json['text'] as String,
      description: json['description'] as String,
      source: json['source'] as String,
      transactionType: json['transactionType'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_TransactionModelToJson(_$_TransactionModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'amount': instance.amount,
      'text': instance.text,
      'description': instance.description,
      'source': instance.source,
      'transactionType': instance.transactionType,
      'createdAt': instance.createdAt.toIso8601String(),
    };
