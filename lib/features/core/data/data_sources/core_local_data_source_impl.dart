import 'package:hive_flutter/hive_flutter.dart';

import '../models/models.dart';
import 'core_local_data_source.dart';

class CoreLocalDataSourceImpl implements CoreLocalDataSource {
  final HiveInterface storage;

  CoreLocalDataSourceImpl({required this.storage});

  @override
  Future<bool> initApp() async {
    try {
      await Hive.openBox(coreBox);
      return true;
    } on HiveError catch (e) {
      throw StorageException(
        code: e.hashCode,
        message: e.message,
      );
    }
  }
}
