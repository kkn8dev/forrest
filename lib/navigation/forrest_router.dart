import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:forrest/features/money_tracker/domain/entity/entity.dart';
import 'package:forrest/navigation/auto_router.gr.dart';

class ForrestRouter {
  factory ForrestRouter(BuildContext context) {
    inst.context = context;
    return inst;
  }

  ForrestRouter._internal();

  late BuildContext context;

  final key = GlobalKey<NavigatorState>();

  static final ForrestRouter inst = ForrestRouter._internal();

  NavigatorState get navigator => key.currentState!;

  void openUpdateModal() {
    context.router.navigateNamed('/updateModal');
  }

  void openAddTransactionModal(TransactionEntity? transactionEntity) {
    context.router
        .navigate(AddTransactionModalRoute(transaction: transactionEntity));
  }

  void openAddTransactionCategoryModal(
    TransactionCategoryEntity? transactionEntity,
  ) {
    context.router.navigate(
      AddTransactionCategoryModalRoute(
        transaction: transactionEntity,
      ),
    );
  }

  void goToDevelop() {
    context.router.navigateNamed('/develop');
  }

  void goToTransactionCategories() {
    context.router.navigateNamed('/transactionCategories');
  }

  void pop() {
    context.router.back();
  }
}
