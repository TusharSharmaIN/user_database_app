import 'package:flutter/foundation.dart';
import 'package:realm/realm.dart';

import '../../../core/realm/realm_service_client.dart';
import '../schema/user_schema.dart';

/// user service file for performing CRUD on user db
/// is inherited from realm service which contains config
class UserService extends RealmService {
  RealmResults<UserSchema> getUsers() {
    return realm.all<UserSchema>();
  }

  bool addUser(UserSchema user) {
    try {
      /// CRUD should be enclosed within a transaction block
      realm.write(() {
        realm.add<UserSchema>(user);
      });
      return true;
    } on RealmException catch (e) {
      debugPrint(e.message);
      return false;
    }
  }

  bool deleteUser(UserSchema user) {
    try {
      realm.write(() {
        realm.delete(user);
      });
      return true;
    } on RealmException catch (e) {
      debugPrint(e.message);
      return false;
    }
  }
}
