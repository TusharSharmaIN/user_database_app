import 'package:dio/dio.dart';

import 'constant/endpoints.dart';
import 'interceptor/dio_interceptor.dart';

class DioClient {
  /// dio instance
  final Dio _dio;

  Dio get dio => _dio;

  /// injecting dio instance
  DioClient(this._dio) {
    _dio
      // ..options.baseUrl = Endpoints.baseUrl
      ..options.connectTimeout = Endpoints.connectionTimeout
      ..options.receiveTimeout = Endpoints.receiveTimeout
      ..options.responseType = ResponseType.json
      ..interceptors.add(DioInterceptor())
      ..interceptors.add(LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
      ));
  }
}
