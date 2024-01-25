import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:forrest/features/core/presentation/bloc/bloc.dart';
import 'package:forrest/main.dart';
import 'package:forrest/navigation/auto_router.dart';
import 'package:forrest/styles/dark_theme.dart';
import 'package:forrest/styles/light_theme.dart';
import 'package:forrest/utils/dio_client.dart';

final RootRouter _appRouter = RootRouter();

class RootScreen extends StatefulWidget {
  const RootScreen({
    required this.id, super.key,
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
  Widget build(BuildContext context) {
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
            for (final locale in supportedLocales) {
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
