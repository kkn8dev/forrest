import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../core/data/models/models.dart';
import 'data_sources.dart';

class MoneyTrackerRemoteDataSourceImpl implements MoneyTrackerRemoteDataSource {
  final String baseApiUrl = dotenv.get('BASE_API_URL');
  final Dio client;

  MoneyTrackerRemoteDataSourceImpl({required this.client});

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
      throw UserException(code: jsonMap['code'], message: jsonMap['message']);
    }
    throw ServerException();
  }
}
