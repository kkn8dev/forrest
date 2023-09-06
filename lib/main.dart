import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';

import 'features/core/data/data_sources/data_sources.dart';
import 'features/core/presentation/bloc/bloc.dart';
import 'features/core/presentation/pages/root_screen.dart';
import 'injection_container.dart';
import 'injection_container.dart' as di;

final logger = Logger(
  printer: PrettyPrinter(stackTraceBeginIndex: 20),
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter('Forrest');
  await di.init();
  await dotenv.load(fileName: ".env.dev");

  var box = await Hive.openBox(coreBox);
  String? id = box.get(userId);

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
          value: sl<CoreBloc>()..add(InitCoreEvent()),
        ),
      ],
      child: RootScreen(
        id: id,
      ),
    );
  }
}
