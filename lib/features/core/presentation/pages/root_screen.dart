import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../main.dart';
import '../../../../navigation/auto_router.dart';
import '../../../../styles/dark_theme.dart';
import '../../../../styles/light_theme.dart';
import '../../../../utils/dio_client.dart';
import '../bloc/bloc.dart';

final RootRouter _appRouter = RootRouter();

class RootScreen extends StatefulWidget {
  const RootScreen({
    super.key,
    required this.id,
  });

  final String? id;

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  void initState() {
    alice.setNavigatorKey(_appRouter.navigatorKey);
    dio.interceptors.add(alice.getDioInterceptor());
    super.initState();
  }

  Locale? getLocale(String? language) {
    if (language != null) {
      return Locale(language, '');
    }
    return null;
  }

  ThemeData getTheme(String theme) {
    if (theme == 'light') {
      return lightTheme;
    }
    return darkTheme;
  }

  @override
  Widget build(context) {
    return BlocConsumer<CoreBloc, CoreState>(
      listener: (context, state) {},
      builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: getTheme(state.theme),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: getLocale(state.locale),
          routeInformationParser: _appRouter.defaultRouteParser(),
          localeResolutionCallback: (deviceLocale, supportedLocales) {
            for (var locale in supportedLocales) {
              if (locale.languageCode == deviceLocale!.languageCode) {
                return deviceLocale;
              }
            }
            return supportedLocales.first;
          },
          routerDelegate: _appRouter.delegate(
            deepLinkBuilder: (platformDeepLink) {
              return const DeepLink.path('/tabs');
            },
          ),
        );
      },
    );
  }
}
