// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:forrest/features/core/presentation/pages/develop_screen.dart'
    as _i1;
import 'package:forrest/features/core/presentation/pages/home_screen.dart'
    as _i3;
import 'package:forrest/features/core/presentation/pages/root_wrapper_screen.dart'
    as _i4;
import 'package:forrest/features/core/presentation/pages/settings_screen.dart'
    as _i5;
import 'package:forrest/features/core/presentation/pages/tabs_screen.dart'
    as _i6;
import 'package:forrest/navigation/auto_router.dart' as _i2;

abstract class $RootRouter extends _i7.RootStackRouter {
  $RootRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    DevelopRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DevelopScreen(),
      );
    },
    DeveloperTab.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DeveloperTabPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    HomeTab.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeTabPage(),
      );
    },
    RootWrapperRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.WrappedRoute(child: const _i4.RootWrapperScreen()),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SettingsScreen(),
      );
    },
    TabsRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.TabsScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.DevelopScreen]
class DevelopRoute extends _i7.PageRouteInfo<void> {
  const DevelopRoute({List<_i7.PageRouteInfo>? children})
      : super(
          DevelopRoute.name,
          initialChildren: children,
        );

  static const String name = 'DevelopRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DeveloperTabPage]
class DeveloperTab extends _i7.PageRouteInfo<void> {
  const DeveloperTab({List<_i7.PageRouteInfo>? children})
      : super(
          DeveloperTab.name,
          initialChildren: children,
        );

  static const String name = 'DeveloperTab';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeTabPage]
class HomeTab extends _i7.PageRouteInfo<void> {
  const HomeTab({List<_i7.PageRouteInfo>? children})
      : super(
          HomeTab.name,
          initialChildren: children,
        );

  static const String name = 'HomeTab';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.RootWrapperScreen]
class RootWrapperRoute extends _i7.PageRouteInfo<void> {
  const RootWrapperRoute({List<_i7.PageRouteInfo>? children})
      : super(
          RootWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'RootWrapperRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SettingsScreen]
class SettingsRoute extends _i7.PageRouteInfo<void> {
  const SettingsRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.TabsScreen]
class TabsRoute extends _i7.PageRouteInfo<void> {
  const TabsRoute({List<_i7.PageRouteInfo>? children})
      : super(
          TabsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabsRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
