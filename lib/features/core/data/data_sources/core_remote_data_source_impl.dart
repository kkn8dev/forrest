import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/models.dart';
import 'data_sources.dart';

class CoreRemoteDataSourceImpl implements CoreRemoteDataSource {
  final String baseApiUrl = dotenv.get('BASE_API_URL');
  final Dio client;

  CoreRemoteDataSourceImpl({required this.client});

  @override
  Future<bool> initApp() async {
    try {
      final response = await client.post(
        '$baseApiUrl/core/init',
        data: {"attributes": {}},
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
