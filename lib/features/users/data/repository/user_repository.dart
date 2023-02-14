import 'dart:developer';

import 'package:dio/dio.dart';

import '../../../../core/network/dio_exceptions.dart';
import '../api/user_api.dart';
import '../models/user_model.dart';

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
      final errorMessage = DioExceptions.fromDioError(e);
      log(errorMessage.toString());
      rethrow;
    }
  }
}
