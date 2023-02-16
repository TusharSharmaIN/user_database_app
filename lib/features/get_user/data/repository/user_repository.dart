import 'dart:developer';

import 'package:dio/dio.dart';

import '../../../../core/api/api_exceptions.dart';
import '../../../../core/api/api_services/user_api/api_models/user_model.dart';
import '../../../../core/api/api_services/user_api/user_api_service.dart';

/// user repository file uses user_api to fetch
/// data, error handling and validation can be done within a repository
class UserRepository {
  final UserApi _userApi;

  UserRepository(this._userApi);

  Future<UserModel> fetchUser() async {
    try {
      final res = await _userApi.fetchUserFromAPI();
      final userModel = UserModel.fromJson(res);
      return userModel;
    } on DioError catch (e) {
      final errorMessage = ApiExceptions.fromDioError(e);
      log(errorMessage.toString());
      rethrow;
    }
  }
}
