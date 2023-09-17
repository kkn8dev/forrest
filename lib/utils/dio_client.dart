import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

var options = BaseOptions(
  baseUrl: dotenv.env['BASE_API_URL'] ?? '',
  // connectTimeout: const Duration(seconds: 10),
  // receiveTimeout: const Duration(seconds: 10),
  followRedirects: false,
);

Dio dio = Dio(options)
  ..interceptors.add(
    QueuedInterceptorsWrapper(
      onRequest: (options, handler) {
        var newOptions = options;
        if (options.uri.path == '/auth/login') {
          newOptions.headers = {
            "Authorization": null,
            "Content-Type": Headers.jsonContentType,
          };
        }
        return handler.next(newOptions);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onError: (DioException e, handler) async {
        // var box = await Hive.openBox(coreBox);
        // var refreshTokenFromBox = await box.get(refreshToken) ?? '';
        // var baseApiUrl = dotenv.env['BASE_API_URL'] ?? '';
        // if (e.response?.statusCode == 401 && refreshTokenFromBox != '') {
        //   try {
        //     var response = await dio.post(
        //       '$baseApiUrl/auth/refresh',
        //       data: {
        //         "refresh_token": refreshTokenFromBox,
        //       },
        //       options: Options(
        //         headers: {
        //           "Authorization": null,
        //           "Content-Type": Headers.jsonContentType,
        //         },
        //       ),
        //     );
        //     if (response.statusCode == 200) {
        //       final jsonMap = response.data as Map<String, dynamic>;
        //       final newAccessToken = jsonMap['access_token'];
        //       final newRefreshToken = jsonMap['refresh_token'];
        //       box.put(accessToken, newAccessToken);
        //       box.put(refreshToken, newRefreshToken);
        //       var data2 = e.requestOptions.data;
        //       final opts = Options(
        //         method: e.requestOptions.method,
        //         headers: {
        //           "Authorization": newAccessToken,
        //           "Content-Type": Headers.jsonContentType,
        //         },
        //       );
        //
        //       final cloneReq = await dio.request(
        //         e.requestOptions.path,
        //         options: opts,
        //         data: data2,
        //         queryParameters: e.requestOptions.queryParameters,
        //       );
        //       return handler.resolve(cloneReq);
        //       handler.next(e);
        //     } else {
        //       box.put(accessToken, '');
        //       box.put(refreshToken, '');
        //       box.put(isTokenExpired, true);
        //       return handler.next(e);
        //     }
        //   } on DioError catch (e) {
        //     return handler.next(e);
        //   }
        // } else if (refreshTokenFromBox == '') {
        //   box.put(accessToken, '');
        //   box.put(refreshToken, '');
        //   box.put(isTokenExpired, true);
        // }
        return handler.next(e);
      },
    ),
  );
