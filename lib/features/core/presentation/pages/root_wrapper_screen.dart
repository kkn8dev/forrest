import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forrest/features/core/data/data_sources/data_sources.dart';
import 'package:forrest/features/core/presentation/bloc/bloc.dart';
import 'package:forrest/navigation/forrest_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

@RoutePage()
class RootWrapperScreen extends StatefulWidget implements AutoRouteWrapper {
  const RootWrapperScreen({
    super.key,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box<String?>(coreBox).listenable(),
      builder: (BuildContext _, Box<dynamic> box, Widget? child) {
        return this;
      },
    );
  }

  @override
  State<RootWrapperScreen> createState() => _RootWrapperScreenState();
}

class _RootWrapperScreenState extends State<RootWrapperScreen>
    with WidgetsBindingObserver {
  late CoreBloc coreBloc = context.read<CoreBloc>();
  bool isUpdateModalOpen = false;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    ForrestRouter(context);
    super.initState();
  }

  @override
  Future<void> dispose() async {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Future<void> didChangeDependencies() async {
    final userLocale = Localizations.localeOf(context);

    final box = await Hive.openBox<String?>(coreBox);
    final oldLocale = box.get(locale);

    if (oldLocale == null) {
      await box.put(locale, userLocale.languageCode);
      coreBloc.add(UpdateUserLocaleCoreEvent(locale: userLocale.languageCode));
    }
    super.didChangeDependencies();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {}
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<CoreBloc, CoreState>(
          listener: (context, state) async {
            showAboutDialog(
              context: context,
            );
          },
          listenWhen: (prev, cur) => prev.unknownError != cur.unknownError,
        ),
      ],
      child: const AutoRouter(),
    );
  }
}
