import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../users_list/data/dao/user_dao.dart';
import '../../users_list/data/dao/user_dao_impl.dart';
import '../../users_list/data/schema/address_schema.dart';
import '../../users_list/data/schema/user_schema.dart';
import '../../../core/network/constant/api_response.dart';
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
  UserDAO userDAO = UserDAORealmImpl();

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
