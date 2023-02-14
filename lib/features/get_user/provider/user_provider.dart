import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/shared_providers.dart';
import '../data/api/user_api.dart';
import '../data/models/user_state.dart';
import '../data/repository/user_repository.dart';
import 'user_data_notifier.dart';

/// list of providers

final userApiProvider = Provider<UserApi>((ref) {
  return UserApi(ref.read(dioClientProvider));
});

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepository(ref.read(userApiProvider));
});

///  we should use this one as it notifies changes user + response state
final userDataProvider =
    StateNotifierProvider.autoDispose<UserDataNotifier, UserState>((ref) {
  return UserDataNotifier(ref.read(userRepositoryProvider));
});
