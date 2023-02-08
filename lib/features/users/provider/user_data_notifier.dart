import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../users_list/schema/user_schema.dart';
import '../../users_list/service/user_service.dart';
import '../../../services/network/constant/api_response.dart';
import '../data/models/user_state.dart';
import '../data/repository/user_repository.dart';

/// using provider alone is not sufficient for complex business logic
/// hence state notifier is used, it keeps track if the state changes
/// and via its provider, rebuild the consumer widget
class UserDataNotifier extends StateNotifier<UserState> {
  UserDataNotifier(this.userRepository) : super(UserState()) {
    getUser();
  }

  UserRepository userRepository;
  UserService userService = UserService();

  Future<void> getUser() async {
    state = state.copyWith(status: RESPONSE_STATUS.loading);
    await userRepository.fetchUser().then((userData) {
      /// creating a user to be stored to database
      UserSchema userToAdd = UserSchema(
        id: userData.id,
        full_name: "${userData.first_name} ${userData.last_name}",
        username: userData.username,
        email: userData.email,
      );
      userService.addUser(userToAdd);

      /// updating state to loading done
      state = state.copyWith(user: userData, status: RESPONSE_STATUS.completed);
    });
  }
}
