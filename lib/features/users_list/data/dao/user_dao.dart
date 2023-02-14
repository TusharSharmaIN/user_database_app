import '../schema/user_schema.dart';

abstract class UserDAO {
  void init();

  List<UserSchema> getAllUsers();

  bool addUser(UserSchema user);

  bool deleteUser(UserSchema user);

  bool clear();
}