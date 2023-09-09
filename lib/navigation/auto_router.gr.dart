// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:forrest/features/core/presentation/pages/develop_screen.dart'
    as _i1;
import 'package:forrest/features/core/presentation/pages/home_screen.dart'
    as _i2;
import 'package:forrest/features/core/presentation/pages/money_screen.dart'
    as _i4;
import 'package:forrest/features/core/presentation/pages/profile_screen.dart'
    as _i5;
import 'package:forrest/features/core/presentation/pages/root_wrapper_screen.dart'
    as _i6;
import 'package:forrest/features/core/presentation/pages/settings_screen.dart'
    as _i7;
import 'package:forrest/features/core/presentation/pages/tabs_screen.dart'
    as _i8;
import 'package:forrest/features/core/presentation/pages/update_modal_screen.dart'
    as _i9;
import 'package:forrest/navigation/auto_router.dart' as _i3;

abstract class $RootRouter extends _i10.RootStackRouter {
  $RootRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    DevelopRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DevelopScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    HomeTab.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeTabPage(),
      );
    },
    MoneyRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MoneyScreen(),
      );
    },
    MoneyTab.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MoneyTabPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ProfileScreen(),
      );
    },
    ProfileTab.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ProfileTabPage(),
      );
    },
    RootWrapperRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.WrappedRoute(child: const _i6.RootWrapperScreen()),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SettingsScreen(),
      );
    },
    SettingsTab.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SettingsTabPage(),
      );
    },
    TabsRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.TabsScreen(),
      );
    },
    UpdateModalRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.UpdateModalScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.DevelopScreen]
class DevelopRoute extends _i10.PageRouteInfo<void> {
  const DevelopRoute({List<_i10.PageRouteInfo>? children})
      : super(
          DevelopRoute.name,
          initialChildren: children,
        );

  static const String name = 'DevelopRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeTabPage]
class HomeTab extends _i10.PageRouteInfo<void> {
  const HomeTab({List<_i10.PageRouteInfo>? children})
      : super(
          HomeTab.name,
          initialChildren: children,
        );

  static const String name = 'HomeTab';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MoneyScreen]
class MoneyRoute extends _i10.PageRouteInfo<void> {
  const MoneyRoute({List<_i10.PageRouteInfo>? children})
      : super(
          MoneyRoute.name,
          initialChildren: children,
        );

  static const String name = 'MoneyRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MoneyTabPage]
class MoneyTab extends _i10.PageRouteInfo<void> {
  const MoneyTab({List<_i10.PageRouteInfo>? children})
      : super(
          MoneyTab.name,
          initialChildren: children,
        );

  static const String name = 'MoneyTab';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ProfileScreen]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ProfileTabPage]
class ProfileTab extends _i10.PageRouteInfo<void> {
  const ProfileTab({List<_i10.PageRouteInfo>? children})
      : super(
          ProfileTab.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTab';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.RootWrapperScreen]
class RootWrapperRoute extends _i10.PageRouteInfo<void> {
  const RootWrapperRoute({List<_i10.PageRouteInfo>? children})
      : super(
          RootWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'RootWrapperRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SettingsScreen]
class SettingsRoute extends _i10.PageRouteInfo<void> {
  const SettingsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SettingsTabPage]
class SettingsTab extends _i10.PageRouteInfo<void> {
  const SettingsTab({List<_i10.PageRouteInfo>? children})
      : super(
          SettingsTab.name,
          initialChildren: children,
        );

  static const String name = 'SettingsTab';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.TabsScreen]
class TabsRoute extends _i10.PageRouteInfo<void> {
  const TabsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          TabsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabsRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.UpdateModalScreen]
class UpdateModalRoute extends _i10.PageRouteInfo<void> {
  const UpdateModalRoute({List<_i10.PageRouteInfo>? children})
      : super(
          UpdateModalRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateModalRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
