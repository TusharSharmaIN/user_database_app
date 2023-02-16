import 'package:flutter/material.dart';

import '../../../core/db/user_dao/schema/user_schema.dart';
import '../../../core/db/user_dao/user_dao.dart';
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
  late List<UserSchema> users;
  late final UserDAO userDAO;

  _UserListPageState() {
    userDAO = UserDAO();
  }

  @override
  void initState() {
    super.initState();
    loadUsers();
  }

  onAdd(UserSchema user) {
    String fullName = user.fullName.toString();
    debugPrint('Adding $fullName');
    if (userDAO.addUser(user)) {
      debugPrint('Added $fullName');
      loadUsers();
    } else {
      debugPrint('Something went wrong while adding $fullName');
    }
  }

  onDelete(UserSchema user) {
    String fullName = user.fullName.toString();
    debugPrint('Deleting $fullName');
    if (userDAO.deleteUser(user)) {
      loadUsers();
    } else {
      debugPrint('Something went wrong while deleting $fullName');
    }
  }

  onClear() {
    if (userDAO.clear()) {
      loadUsers();
      debugPrint('Successfully Cleared');
    } else {
      debugPrint('Not able to clear list');
    }
  }

  void loadUsers() {
    setState(() {
      users = userDAO.getAllUsers();
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
          // AddUserWidget(
          //   onAdd: onAdd,
          // ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: onClear,
                child: const Text("Clear"),
              ),
            ),
          ),
          Expanded(
            child: UserListWidget(
              users: users,
              onDelete: onDelete,
            ),
          )
        ],
      ),
    );
  }
}
