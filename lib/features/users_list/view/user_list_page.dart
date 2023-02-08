import 'package:flutter/material.dart';
import 'package:realm/realm.dart';

import '../schema/user_schema.dart';
import '../service/user_service.dart';
import 'add_user_widget.dart';
import 'user_list_widget.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  late RealmResults<UserSchema> users;
  late final UserService service;

  _UserListPageState() {
    service = UserService();
  }

  @override
  void initState() {
    super.initState();
    loadUsers();
  }

  onAdd(UserSchema user) {
    String fullName = user.full_name.toString();
    debugPrint('Adding $fullName');
    if (service.addUser(user)) {
      debugPrint('Added $fullName');
      loadUsers();
    } else {
      debugPrint('Something went wrong while adding $fullName');
    }
  }

  onDelete(UserSchema user) {
    String fullName = user.full_name.toString();
    debugPrint('Deleting $fullName');
    if (service.deleteUser(user)) {
      loadUsers();
    } else {
      debugPrint('Something went wrong while deleting $fullName');
    }
  }

  void loadUsers() {
    setState(() {
      users = service.getUsers();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: Column(
        children: [
          AddUserWidget(
            onAdd: onAdd,
          ),
          Expanded(
            child: UserListWidget(
              users: users.toList(),
              onDelete: onDelete,
            ),
          )
        ],
      ),
    );
  }
}
