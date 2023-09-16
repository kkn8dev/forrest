// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:forrest/features/core/presentation/pages/develop_screen.dart'
    as _i3;
import 'package:forrest/features/core/presentation/pages/home_screen.dart'
    as _i4;
import 'package:forrest/features/core/presentation/pages/profile_screen.dart'
    as _i7;
import 'package:forrest/features/core/presentation/pages/root_wrapper_screen.dart'
    as _i8;
import 'package:forrest/features/core/presentation/pages/settings_screen.dart'
    as _i9;
import 'package:forrest/features/core/presentation/pages/tabs_screen.dart'
    as _i10;
import 'package:forrest/features/core/presentation/pages/update_modal_screen.dart'
    as _i12;
import 'package:forrest/features/money_tracker/domain/entity/entity.dart'
    as _i15;
import 'package:forrest/features/money_tracker/presentation/pages/add_transaction_category_modal_screen.dart'
    as _i1;
import 'package:forrest/features/money_tracker/presentation/pages/add_transaction_modal_screen.dart'
    as _i2;
import 'package:forrest/features/money_tracker/presentation/pages/money_screen.dart'
    as _i6;
import 'package:forrest/features/money_tracker/presentation/pages/transaction_categories_screen.dart'
    as _i11;
import 'package:forrest/navigation/auto_router.dart' as _i5;

abstract class $RootRouter extends _i13.RootStackRouter {
  $RootRouter({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    AddTransactionCategoryModalRoute.name: (routeData) {
      final args = routeData.argsAs<AddTransactionCategoryModalRouteArgs>(
          orElse: () => const AddTransactionCategoryModalRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AddTransactionCategoryModalScreen(
          key: args.key,
          transaction: args.transaction,
        ),
      );
    },
    AddTransactionModalRoute.name: (routeData) {
      final args = routeData.argsAs<AddTransactionModalRouteArgs>(
          orElse: () => const AddTransactionModalRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AddTransactionModalScreen(
          key: args.key,
          transaction: args.transaction,
        ),
      );
    },
    DevelopRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DevelopScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeScreen(),
      );
    },
    HomeTab.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomeTabPage(),
      );
    },
    MoneyRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MoneyScreen(),
      );
    },
    MoneyTab.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MoneyTabPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ProfileScreen(),
      );
    },
    ProfileTab.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ProfileTabPage(),
      );
    },
    RootWrapperRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.WrappedRoute(child: const _i8.RootWrapperScreen()),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SettingsScreen(),
      );
    },
    SettingsTab.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SettingsTabPage(),
      );
    },
    TabsRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.TabsScreen(),
      );
    },
    TransactionCategoriesRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.TransactionCategoriesScreen(),
      );
    },
    UpdateModalRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.UpdateModalScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddTransactionCategoryModalScreen]
class AddTransactionCategoryModalRoute
    extends _i13.PageRouteInfo<AddTransactionCategoryModalRouteArgs> {
  AddTransactionCategoryModalRoute({
    _i14.Key? key,
    _i15.TransactionCategoryEntity? transaction,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          AddTransactionCategoryModalRoute.name,
          args: AddTransactionCategoryModalRouteArgs(
            key: key,
            transaction: transaction,
          ),
          initialChildren: children,
        );

  static const String name = 'AddTransactionCategoryModalRoute';

  static const _i13.PageInfo<AddTransactionCategoryModalRouteArgs> page =
      _i13.PageInfo<AddTransactionCategoryModalRouteArgs>(name);
}

class AddTransactionCategoryModalRouteArgs {
  const AddTransactionCategoryModalRouteArgs({
    this.key,
    this.transaction,
  });

  final _i14.Key? key;

  final _i15.TransactionCategoryEntity? transaction;

  @override
  String toString() {
    return 'AddTransactionCategoryModalRouteArgs{key: $key, transaction: $transaction}';
  }
}

/// generated route for
/// [_i2.AddTransactionModalScreen]
class AddTransactionModalRoute
    extends _i13.PageRouteInfo<AddTransactionModalRouteArgs> {
  AddTransactionModalRoute({
    _i14.Key? key,
    _i15.TransactionEntity? transaction,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          AddTransactionModalRoute.name,
          args: AddTransactionModalRouteArgs(
            key: key,
            transaction: transaction,
          ),
          initialChildren: children,
        );

  static const String name = 'AddTransactionModalRoute';

  static const _i13.PageInfo<AddTransactionModalRouteArgs> page =
      _i13.PageInfo<AddTransactionModalRouteArgs>(name);
}

class AddTransactionModalRouteArgs {
  const AddTransactionModalRouteArgs({
    this.key,
    this.transaction,
  });

  final _i14.Key? key;

  final _i15.TransactionEntity? transaction;

  @override
  String toString() {
    return 'AddTransactionModalRouteArgs{key: $key, transaction: $transaction}';
  }
}

/// generated route for
/// [_i3.DevelopScreen]
class DevelopRoute extends _i13.PageRouteInfo<void> {
  const DevelopRoute({List<_i13.PageRouteInfo>? children})
      : super(
          DevelopRoute.name,
          initialChildren: children,
        );

  static const String name = 'DevelopRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute({List<_i13.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeTabPage]
class HomeTab extends _i13.PageRouteInfo<void> {
  const HomeTab({List<_i13.PageRouteInfo>? children})
      : super(
          HomeTab.name,
          initialChildren: children,
        );

  static const String name = 'HomeTab';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MoneyScreen]
class MoneyRoute extends _i13.PageRouteInfo<void> {
  const MoneyRoute({List<_i13.PageRouteInfo>? children})
      : super(
          MoneyRoute.name,
          initialChildren: children,
        );

  static const String name = 'MoneyRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MoneyTabPage]
class MoneyTab extends _i13.PageRouteInfo<void> {
  const MoneyTab({List<_i13.PageRouteInfo>? children})
      : super(
          MoneyTab.name,
          initialChildren: children,
        );

  static const String name = 'MoneyTab';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ProfileScreen]
class ProfileRoute extends _i13.PageRouteInfo<void> {
  const ProfileRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ProfileTabPage]
class ProfileTab extends _i13.PageRouteInfo<void> {
  const ProfileTab({List<_i13.PageRouteInfo>? children})
      : super(
          ProfileTab.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTab';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i8.RootWrapperScreen]
class RootWrapperRoute extends _i13.PageRouteInfo<void> {
  const RootWrapperRoute({List<_i13.PageRouteInfo>? children})
      : super(
          RootWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'RootWrapperRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SettingsScreen]
class SettingsRoute extends _i13.PageRouteInfo<void> {
  const SettingsRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SettingsTabPage]
class SettingsTab extends _i13.PageRouteInfo<void> {
  const SettingsTab({List<_i13.PageRouteInfo>? children})
      : super(
          SettingsTab.name,
          initialChildren: children,
        );

  static const String name = 'SettingsTab';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.TabsScreen]
class TabsRoute extends _i13.PageRouteInfo<void> {
  const TabsRoute({List<_i13.PageRouteInfo>? children})
      : super(
          TabsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabsRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i11.TransactionCategoriesScreen]
class TransactionCategoriesRoute extends _i13.PageRouteInfo<void> {
  const TransactionCategoriesRoute({List<_i13.PageRouteInfo>? children})
      : super(
          TransactionCategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'TransactionCategoriesRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i12.UpdateModalScreen]
class UpdateModalRoute extends _i13.PageRouteInfo<void> {
  const UpdateModalRoute({List<_i13.PageRouteInfo>? children})
      : super(
          UpdateModalRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateModalRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}
