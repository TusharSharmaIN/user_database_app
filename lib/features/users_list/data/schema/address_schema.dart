import 'package:realm/realm.dart';

part 'address_schema.g.dart';

/// user schema for realm
/// this is kept different from user_model
/// as it has full_name (instead of first_name & last_name)
@RealmModel()
class $AddressSchema {
  late String? city;
  late String? streetName;
  late String? streetAddress;
  late String? zipCode;
  late String? state;
  late String? country;
}