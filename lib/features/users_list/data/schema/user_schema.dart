import 'package:realm/realm.dart';

import 'address_schema.dart';

part 'user_schema.g.dart';

/// user schema for realm
/// this is kept different from user_model
/// as it has fullName (instead of first_name & last_name)
@RealmModel()
class _UserSchema {
  @PrimaryKey()
  late int id;
  late String? fullName;
  late String? username;
  late String? password;
  late String? email;
  late $AddressSchema? address;
}
