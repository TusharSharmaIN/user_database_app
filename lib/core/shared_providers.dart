import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'api/api_client.dart';
import 'shared_preferences/preference.dart';
import 'shared_preferences/preference_client.dart';

/// list of shared providers

final dioInstanceProvider = Provider<Dio>((ref) {
  return Dio();
});

final apiClientProvider = Provider<ApiClient>((ref) {
  final dio = ref.watch(dioInstanceProvider);
  return ApiClient(dio);
});

final preferenceProvider = Provider<Preference>((ref) {
  return Preference();
});

final sharedPrefClientProvider = Provider<SharedPreferenceClient>((ref) {
  return SharedPreferenceClient(ref.read(preferenceProvider));
});