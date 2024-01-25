import 'package:auto_route/auto_route.dart';
import 'package:forrest/navigation/auto_router.gr.dart';

@AutoRouterConfig()
class RootRouter extends $RootRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: RootWrapperRoute.page,
      path: '/',
      children: [
        AutoRoute(
          path: Routes.tabs,
          page: TabsRoute.page,
          children: [
            RedirectRoute(path: '', redirectTo: Routes.home),
            AutoRoute(
              path: Routes.home,
              page: HomeTab.page,
              children: <AutoRoute>[
                AutoRoute(
                  path: '',
                  page: HomeRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: Routes.profile,
              page: ProfileTab.page,
              children: <AutoRoute>[
                AutoRoute(path: '', page: ProfileRoute.page),
              ],
            ),
            AutoRoute(
              path: Routes.money,
              page: MoneyTab.page,
              children: <AutoRoute>[
                AutoRoute(path: '', page: MoneyRoute.page),
              ],
            ),
            AutoRoute(
              path: Routes.settings,
              page: SettingsTab.page,
              children: <AutoRoute>[
                AutoRoute(path: '', page: SettingsRoute.page),
              ],
            ),
          ],
        ),
        AutoRoute(
          path: Routes.develop,
          page: DevelopRoute.page,
        ),
        AutoRoute(
          path: Routes.transactionCategories,
          page: TransactionCategoriesRoute.page,
        ),
        CustomRoute(
          durationInMilliseconds: 0,
          reverseDurationInMilliseconds: 0,
          opaque: false,
          path: Routes.updateModal,
          page: UpdateModalRoute.page,
          fullscreenDialog: true,
        ),
        CustomRoute(
          durationInMilliseconds: 0,
          reverseDurationInMilliseconds: 0,
          opaque: false,
          path: Routes.addTransactionModal,
          page: AddTransactionModalRoute.page,
          fullscreenDialog: true,
        ),
        CustomRoute(
          durationInMilliseconds: 0,
          reverseDurationInMilliseconds: 0,
          opaque: false,
          path: Routes.addTransactionCategoryModal,
          page: AddTransactionCategoryModalRoute.page,
          fullscreenDialog: true,
        ),
      ],
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ];
}

@RoutePage(name: 'HomeTab')
class HomeTabPage extends AutoRouter {
  const HomeTabPage({super.key});
}

@RoutePage(name: 'SettingsTab')
class SettingsTabPage extends AutoRouter {
  const SettingsTabPage({super.key});
}

@RoutePage(name: 'MoneyTab')
class MoneyTabPage extends AutoRouter {
  const MoneyTabPage({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}

class EmptyRouterPage extends AutoRouter {
  const EmptyRouterPage({super.key});
}

class Routes {
  static const tabs = 'tabs';
  static const home = 'home';
  static const develop = 'develop';
  static const transactionCategories = 'transactionCategories';
  static const money = 'money';
  static const profile = 'profile';
  static const settings = 'settings';
  static const updateModal = 'updateModal';
  static const addTransactionModal = 'addTransactionModal';
  static const addTransactionCategoryModal = 'addTransactionCategoryModal';
}
