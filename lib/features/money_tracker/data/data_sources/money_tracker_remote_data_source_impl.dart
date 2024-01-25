import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:forrest/features/core/data/models/models.dart';
import 'package:forrest/features/money_tracker/data/data_sources/data_sources.dart';

class MoneyTrackerRemoteDataSourceImpl implements MoneyTrackerRemoteDataSource {
  MoneyTrackerRemoteDataSourceImpl({required this.client});

  final String baseApiUrl = dotenv.get('BASE_API_URL');
  final Dio client;

  @override
  Future<bool> initApp() async {
    try {
      final response = await client.post(
        '$baseApiUrl/getForbiddenWordsList',
      );
      if (response.statusCode == 200) {
        // final jsonMap = response.data as Map<String, dynamic>;
        return true;
      }
    } on DioException catch (e) {
      final jsonMap = e.response?.data as Map<String, dynamic>;
      try {
        throw UserException(
          code: jsonMap['code'] as int,
          message: jsonMap['message'] as String,
        );
      } catch (e) {
        throw ServerException();
      }
    }
    throw ServerException();
  }
}
