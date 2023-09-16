import '../../domain/entity/entity.dart';

abstract class MoneyTrackerEvent {}

class InitMoneyTrackerEvent extends MoneyTrackerEvent {}

class LoadMoneyTrackerEvent extends MoneyTrackerEvent {}

class CreateTransactionCoreEvent extends MoneyTrackerEvent {
  CreateTransactionCoreEvent({required this.transactionEntity});

  final TransactionEntity transactionEntity;
}

class DeleteTransactionCoreEvent extends MoneyTrackerEvent {
  DeleteTransactionCoreEvent({required this.transactionEntity});

  final TransactionEntity transactionEntity;
}

class EditTransactionCoreEvent extends MoneyTrackerEvent {
  EditTransactionCoreEvent({required this.transactionEntity});

  final TransactionEntity transactionEntity;
}

class CreateTransactionCategoryCoreEvent extends MoneyTrackerEvent {
  CreateTransactionCategoryCoreEvent({required this.transactionEntity});

  final TransactionCategoryEntity transactionEntity;
}

class DeleteTransactionCategoryCoreEvent extends MoneyTrackerEvent {
  DeleteTransactionCategoryCoreEvent({required this.transactionEntity});

  final TransactionCategoryEntity transactionEntity;
}

class EditTransactionCategoryCoreEvent extends MoneyTrackerEvent {
  EditTransactionCategoryCoreEvent({required this.transactionEntity});

  final TransactionCategoryEntity transactionEntity;
}
