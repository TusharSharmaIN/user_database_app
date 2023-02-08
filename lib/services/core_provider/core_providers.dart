import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realm/realm.dart';

import '../network/dio_client.dart';
import '../shared_preferences/preference.dart';
import '../shared_preferences/preference_client.dart';

/// list of shared providers

final dioInstanceProvider = Provider<Dio>((ref) {
  return Dio();
});

final dioClientProvider = Provider<DioClient>((ref) {
  final dio = ref.watch(dioInstanceProvider);
  return DioClient(dio);
});

final preferenceProvider = Provider<Preference>((ref) {
  return Preference();
});

final sharedPrefClientProvider = Provider<SharedPreferenceClient>((ref) {
  return SharedPreferenceClient(ref.read(preferenceProvider));
});