import 'package:forrest/features/money_tracker/data/data_sources/money_tracker_remote_data_source.dart';

class MoneyTrackerRemoteDataSourceMock implements MoneyTrackerRemoteDataSource {
  MoneyTrackerRemoteDataSourceMock();

  @override
  Future<bool> initApp() async {
    await Future.delayed(const Duration(seconds: 3));
    if (true) {
      return true;
    }
    // } else if (true) {
    //   throw UserException(code: 400, message: 'user error');
    // } else {
    //   throw ServerException();
    // }
  }
}
