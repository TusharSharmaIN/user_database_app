import 'package:realm/realm.dart';

part 'user_schema.g.dart';

/// user schema for realm
/// this is kept different from user_model
/// as it has full_name (instead of first_name & last_name)
@RealmModel()
class _UserSchema {
  late int? id;
  late String? full_name;
  late String? username;
  late String? password;
  late String? email;
}
