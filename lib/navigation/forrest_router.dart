import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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

  goToDevelop() {
    context.router.navigateNamed('/develop');
  }

  pop() {
    context.router.back();
  }
}
