import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../data/data_sources/data_sources.dart';
import '../bloc/bloc.dart';

@RoutePage()
class RootWrapperScreen extends StatefulWidget implements AutoRouteWrapper {
  const RootWrapperScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget wrappedRoute(context) {
    return ValueListenableBuilder(
        valueListenable: Hive.box(coreBox).listenable(),
        builder: (BuildContext _, Box<dynamic> box, Widget? child) {
          return this;
        });
  }

  @override
  State<RootWrapperScreen> createState() => _RootWrapperScreenState();
}

class _RootWrapperScreenState extends State<RootWrapperScreen>
    with WidgetsBindingObserver {
  late CoreBloc coreBloc = context.read<CoreBloc>();
  var isUpdateModalOpen = false;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() async {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeDependencies() async {
    Locale userLocale = Localizations.localeOf(context);

    var box = await Hive.openBox(coreBox);
    var oldLocale = box.get(locale);

    if (oldLocale == null) {
      box.put(locale, userLocale.languageCode);
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
          listener: (context, state) async {},
          listenWhen: (prev, cur) => prev.unknownError != cur.unknownError,
        ),
      ],
      child: const AutoRouter(),
    );
  }
}
