import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:forrest/features/core/data/data_sources/data_sources.dart';
import 'package:forrest/features/core/helpers/notification_service.dart';
import 'package:forrest/injection_container.dart' as di;
import 'package:forrest/main.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest(
    'add new habit',
    // nativeAutomation: true,
    ($) async {
      WidgetsFlutterBinding.ensureInitialized();
      await Hive.initFlutter('Forrest');
      await di.init();
      await NotificationService().initNotification();
      final box = await Hive.openBox<String?>(coreBox);
      final env = box.get(environment);

      if (env == 'develop') {
        await dotenv.load(fileName: '.env.dev');
      } else {
        await dotenv.load();
      }
      await $.pumpWidgetAndSettle(
        const MyApp(id: 'id', locale: 'en'),
      );

      await $(#habitsScreen).waitUntilVisible();

      await $(#newHabit).tap();

      // await $(#habitsScreen).waitUntilVisible();
    },
  );
  patrolTest(
    'add new habit',
    ($) async {
      WidgetsFlutterBinding.ensureInitialized();
      await Hive.initFlutter('Forrest');
      await di.init();
      await NotificationService().initNotification();
      final box = await Hive.openBox<String?>(coreBox);
      final env = box.get(environment);

      if (env == 'develop') {
        await dotenv.load(fileName: '.env.dev');
      } else {
        await dotenv.load();
      }
      await $.pumpWidgetAndSettle(
        const MyApp(id: 'id', locale: 'en'),
      );

      await $(#habitsScreen).waitUntilVisible();
      await $(#moneyTrackerTab).waitUntilVisible();

      await $(#moneyTrackerTab).tap();

      // await $(#habitsScreen).waitUntilVisible();
    },
  );
}
