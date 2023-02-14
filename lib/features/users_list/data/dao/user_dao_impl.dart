import 'package:flutter/material.dart';
import 'package:realm/realm.dart';

import '../../../../main.dart';
import '../schema/user_schema.dart';
import 'user_dao.dart';

/// realm implementation for the user dao class
class UserDAORealmImpl implements UserDAO {
  late final Realm userRealm;

  UserDAORealmImpl() {
    init();
  }

  /// Initialise the Realm DB here...
  @override
  void init() {
    userRealm = getIt<Realm>();
  }

  @override
  List<UserSchema> getAllUsers() {
    return userRealm.all<UserSchema>().toList();
  }

  @override
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

  @override
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

  @override
  bool clear() {
    try {
      userRealm.write((){
        userRealm.deleteAll();
      });
      return true;
    } on RealmException catch (e) {
      debugPrint(e.message);
      return false;
    }
  }
}