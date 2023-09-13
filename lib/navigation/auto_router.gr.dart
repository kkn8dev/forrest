// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:forrest/features/core/presentation/pages/develop_screen.dart'
    as _i2;
import 'package:forrest/features/core/presentation/pages/home_screen.dart'
    as _i3;
import 'package:forrest/features/core/presentation/pages/profile_screen.dart'
    as _i6;
import 'package:forrest/features/core/presentation/pages/root_wrapper_screen.dart'
    as _i7;
import 'package:forrest/features/core/presentation/pages/settings_screen.dart'
    as _i8;
import 'package:forrest/features/core/presentation/pages/tabs_screen.dart'
    as _i9;
import 'package:forrest/features/core/presentation/pages/update_modal_screen.dart'
    as _i10;
import 'package:forrest/features/money_tracker/domain/entity/entity.dart'
    as _i13;
import 'package:forrest/features/money_tracker/presentation/pages/add_transaction_modal_screen.dart'
    as _i1;
import 'package:forrest/features/money_tracker/presentation/pages/money_screen.dart'
    as _i5;
import 'package:forrest/navigation/auto_router.dart' as _i4;

abstract class $RootRouter extends _i11.RootStackRouter {
  $RootRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    AddTransactionModalRoute.name: (routeData) {
      final args = routeData.argsAs<AddTransactionModalRouteArgs>(
          orElse: () => const AddTransactionModalRouteArgs());
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AddTransactionModalScreen(
          key: args.key,
          transaction: args.transaction,
        ),
      );
    },
    DevelopRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DevelopScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    HomeTab.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeTabPage(),
      );
    },
    MoneyRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MoneyScreen(),
      );
    },
    MoneyTab.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MoneyTabPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ProfileScreen(),
      );
    },
    ProfileTab.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ProfileTabPage(),
      );
    },
    RootWrapperRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.WrappedRoute(child: const _i7.RootWrapperScreen()),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SettingsScreen(),
      );
    },
    SettingsTab.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SettingsTabPage(),
      );
    },
    TabsRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.TabsScreen(),
      );
    },
    UpdateModalRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.UpdateModalScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddTransactionModalScreen]
class AddTransactionModalRoute
    extends _i11.PageRouteInfo<AddTransactionModalRouteArgs> {
  AddTransactionModalRoute({
    _i12.Key? key,
    _i13.TransactionEntity? transaction,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          AddTransactionModalRoute.name,
          args: AddTransactionModalRouteArgs(
            key: key,
            transaction: transaction,
          ),
          initialChildren: children,
        );

  static const String name = 'AddTransactionModalRoute';

  static const _i11.PageInfo<AddTransactionModalRouteArgs> page =
      _i11.PageInfo<AddTransactionModalRouteArgs>(name);
}

class AddTransactionModalRouteArgs {
  const AddTransactionModalRouteArgs({
    this.key,
    this.transaction,
  });

  final _i12.Key? key;

  final _i13.TransactionEntity? transaction;

  @override
  String toString() {
    return 'AddTransactionModalRouteArgs{key: $key, transaction: $transaction}';
  }
}

/// generated route for
/// [_i2.DevelopScreen]
class DevelopRoute extends _i11.PageRouteInfo<void> {
  const DevelopRoute({List<_i11.PageRouteInfo>? children})
      : super(
          DevelopRoute.name,
          initialChildren: children,
        );

  static const String name = 'DevelopRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeTabPage]
class HomeTab extends _i11.PageRouteInfo<void> {
  const HomeTab({List<_i11.PageRouteInfo>? children})
      : super(
          HomeTab.name,
          initialChildren: children,
        );

  static const String name = 'HomeTab';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MoneyScreen]
class MoneyRoute extends _i11.PageRouteInfo<void> {
  const MoneyRoute({List<_i11.PageRouteInfo>? children})
      : super(
          MoneyRoute.name,
          initialChildren: children,
        );

  static const String name = 'MoneyRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MoneyTabPage]
class MoneyTab extends _i11.PageRouteInfo<void> {
  const MoneyTab({List<_i11.PageRouteInfo>? children})
      : super(
          MoneyTab.name,
          initialChildren: children,
        );

  static const String name = 'MoneyTab';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ProfileScreen]
class ProfileRoute extends _i11.PageRouteInfo<void> {
  const ProfileRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ProfileTabPage]
class ProfileTab extends _i11.PageRouteInfo<void> {
  const ProfileTab({List<_i11.PageRouteInfo>? children})
      : super(
          ProfileTab.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTab';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.RootWrapperScreen]
class RootWrapperRoute extends _i11.PageRouteInfo<void> {
  const RootWrapperRoute({List<_i11.PageRouteInfo>? children})
      : super(
          RootWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'RootWrapperRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SettingsScreen]
class SettingsRoute extends _i11.PageRouteInfo<void> {
  const SettingsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SettingsTabPage]
class SettingsTab extends _i11.PageRouteInfo<void> {
  const SettingsTab({List<_i11.PageRouteInfo>? children})
      : super(
          SettingsTab.name,
          initialChildren: children,
        );

  static const String name = 'SettingsTab';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.TabsScreen]
class TabsRoute extends _i11.PageRouteInfo<void> {
  const TabsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          TabsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabsRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.UpdateModalScreen]
class UpdateModalRoute extends _i11.PageRouteInfo<void> {
  const UpdateModalRoute({List<_i11.PageRouteInfo>? children})
      : super(
          UpdateModalRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateModalRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
