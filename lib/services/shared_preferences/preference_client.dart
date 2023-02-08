import 'dart:async';

import 'preference.dart';

class SharedPreferenceClient {
  final Preference _sharedPreference;

  const SharedPreferenceClient(this._sharedPreference);

  Future<void> saveAuthToken(String authToken) async {
    await _sharedPreference.setString(PrefKeys.authToken, authToken);
  }

  String? get authToken {
    return _sharedPreference.getString(PrefKeys.authToken);
  }

  Future<bool> removeAuthToken() async {
    return _sharedPreference.remove(PrefKeys.authToken);
  }

  Future<void> saveIsLoggedIn(bool value) async {
    await _sharedPreference.setBool(PrefKeys.isLoggedIn, value);
  }

  bool get isLoggedIn {
    return _sharedPreference.getBool(PrefKeys.isLoggedIn) ?? false;
  }

  Future<void> clear() async {
    await _sharedPreference.clear();
  }
}

mixin PrefKeys {
  static const String isLoggedIn = "isLoggedIn";
  static const String authToken = "authToken";
}
