import 'package:alice/alice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';

import 'features/core/data/data_sources/data_sources.dart';
import 'features/core/helpers/notification_service.dart';
import 'features/core/presentation/bloc/bloc.dart';
import 'features/core/presentation/pages/root_screen.dart';
import 'injection_container.dart';
import 'injection_container.dart' as di;

final logger = Logger(
  printer: PrettyPrinter(stackTraceBeginIndex: 20),
);
Alice alice = Alice();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter('Forrest');
  await di.init();
  NotificationService().initNotification();
  var box = await Hive.openBox(coreBox);
  String? id = box.get(userId);
  String? env = box.get(environment);
  if (env == 'develop') {
    await dotenv.load(fileName: ".env.dev");
  } else {
    await dotenv.load(fileName: ".env");
  }
  runApp(
    MyApp(
      id: id,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.id,
  });

  final String? id;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: sl<CoreBloc>(),
        ),
      ],
      child: RootScreen(
        id: id,
      ),
    );
  }
}
