import 'package:alice/alice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:forrest/features/core/data/data_sources/data_sources.dart';
import 'package:forrest/features/core/helpers/notification_service.dart';
import 'package:forrest/features/core/presentation/bloc/bloc.dart';
import 'package:forrest/features/core/presentation/pages/root_screen.dart';
import 'package:forrest/features/money_tracker/presentation/bloc/bloc.dart';
import 'package:forrest/injection_container.dart' as di;
import 'package:forrest/injection_container.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(stackTraceBeginIndex: 20),
);
Alice alice = Alice();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter('Forrest');
  await di.init();
  await NotificationService().initNotification();
  final box = await Hive.openBox<String?>(coreBox);
  final id = box.get(userId);
  final env = box.get(environment);
  final userLocale = box.get(locale);

  if (env == 'develop') {
    await dotenv.load(fileName: '.env.dev');
  } else {
    await dotenv.load(); // load .env file by default
  }
  runApp(
    MyApp(
      id: id,
      locale: userLocale,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    required this.id,
    required this.locale,
    super.key,
  });

  final String? id;
  final String? locale;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: sl<CoreBloc>()
            ..add(
              UpdateUserLocaleCoreEvent(
                locale: locale,
              ),
            ),
        ),
        BlocProvider.value(
          value: sl<MoneyTrackerBloc>(),
        ),
      ],
      child: RootScreen(
        id: id,
      ),
    );
  }
}
