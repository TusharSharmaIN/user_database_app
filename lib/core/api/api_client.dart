import 'package:dio/dio.dart';

import 'api_constants/api_endpoints.dart';
import 'api_interceptor.dart';

class ApiClient {
  /// dio instance
  final Dio _dio;

  Dio get dio => _dio;

  /// injecting dio instance
  ApiClient(this._dio) {
    _dio
    // ..options.baseUrl = Endpoints.baseUrl
      ..options.connectTimeout = ApiEndpoints.connectionTimeout
      ..options.receiveTimeout = ApiEndpoints.receiveTimeout
      ..options.responseType = ResponseType.json
      ..interceptors.add(ApiInterceptor())
      ..interceptors.add(LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
      ));
  }
}
