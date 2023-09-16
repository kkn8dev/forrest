import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:forrest/features/money_tracker/domain/entity/entity.dart';
import 'package:forrest/navigation/auto_router.gr.dart';

class ForrestRouter {
  late BuildContext context;

  final key = GlobalKey<NavigatorState>();

  static final ForrestRouter inst = ForrestRouter._internal();

  ForrestRouter._internal();

  factory ForrestRouter(BuildContext context) {
    inst.context = context;
    return inst;
  }

  NavigatorState get navigator => key.currentState!;

  openUpdateModal() {
    context.router.navigateNamed('/updateModal');
  }

  openAddTransactionModal(TransactionEntity? transactionEntity) {
    context.router
        .navigate(AddTransactionModalRoute(transaction: transactionEntity));
  }

  openAddTransactionCategoryModal(
      TransactionCategoryEntity? transactionEntity) {
    context.router.navigate(
      AddTransactionCategoryModalRoute(
        transaction: transactionEntity,
      ),
    );
  }

  goToDevelop() {
    context.router.navigateNamed('/develop');
  }

  goToTransactionCategories() {
    context.router.navigateNamed('/transactionCategories');
  }

  pop() {
    context.router.back();
  }
}
