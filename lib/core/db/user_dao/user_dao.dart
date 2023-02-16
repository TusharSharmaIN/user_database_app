import 'package:flutter/material.dart';
import 'package:realm/realm.dart';

import '../../../../main.dart';
import 'schema/user_schema.dart';

class UserDAO {
  late final Realm userRealm;

  /// Initialise the Realm DB here...
  UserDAO() {
    userRealm = getIt<Realm>();
  }


  List<UserSchema> getAllUsers() {
    return userRealm.all<UserSchema>().toList();
    /// list of users in ascending order of names
    // return userRealm.query<UserSchema>('TRUEPREDICATE SORT(fullName ASC)').toList();
    /// list of users whose name begins with 'P'
    // return userRealm.query<UserSchema>('fullName BEGINSWITH \$0', ['P']).toList();
  }

  bool addUser(UserSchema user) {
    try {
      /// CRUD should be enclosed within a transaction block
      userRealm.write(() {
        userRealm.add<UserSchema>(user);
      });
      return true;
    } on RealmException catch (e) {
      debugPrint(e.message);
      return false;
    }
  }

  bool deleteUser(UserSchema user) {
    try {
      userRealm.write(() {
        userRealm.delete(user);
      });
      return true;
    } on RealmException catch (e) {
      debugPrint(e.message);
      return false;
    }
  }

  bool clear() {
    try {
      userRealm.write((){
        userRealm.deleteAll<UserSchema>();
      });
      return true;
    } on RealmException catch (e) {
      debugPrint(e.message);
      return false;
    }
  }
}