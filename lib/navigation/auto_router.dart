import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'auto_router.gr.dart';

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
              path: Routes.settings,
              page: DeveloperTab.page,
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
        // CustomRoute(
        //   durationInMilliseconds: 0,
        //   reverseDurationInMilliseconds: 0,
        //   barrierDismissible: true,
        //   opaque: false,
        //   path: Routes.uploadModal,
        //   page: UploadPhotosModalRoute.page,
        //   fullscreenDialog: true,
        // ),
      ],
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ];
}

@RoutePage(name: 'HomeTab')
class HomeTabPage extends AutoRouter {
  const HomeTabPage({super.key});
}

@RoutePage(name: 'DeveloperTab')
class DeveloperTabPage extends AutoRouter {
  const DeveloperTabPage({super.key});
}

class EmptyRouterPage extends AutoRouter {
  const EmptyRouterPage({Key? key}) : super(key: key);
}

class Routes {
  static const tabs = 'tabs';
  static const home = 'home';
  static const develop = 'develop';
  static const settings = 'settings';
}
