import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/api/api_constants/response_status.dart';
import '../../../core/db/user_dao/schema/address_schema.dart';
import '../../../core/db/user_dao/schema/user_schema.dart';
import '../../../core/db/user_dao/user_dao.dart';
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
  UserDAO userDAO = UserDAO();

  Future<void> getUser() async {
    state = state.copyWith(status: RESPONSE_STATUS.loading);
    await userRepository.fetchUser().then((userData) {
      /// creating a user to be stored to database
      UserSchema userToAdd = UserSchema(
        userData.id!,
        fullName: "${userData.firstName} ${userData.lastName}",
        username: userData.username,
        email: userData.email,
        address: AddressSchema(
          city: userData.address?.city,
          streetName: userData.address?.streetName,
          streetAddress: userData.address?.streetAddress,
          zipCode: userData.address?.zipCode,
          state: userData.address?.state,
          country: userData.address?.country,
        ),
      );
      userDAO.addUser(userToAdd);

      /// updating state to loading done
      state = state.copyWith(user: userData, status: RESPONSE_STATUS.completed);
    });
  }
}
