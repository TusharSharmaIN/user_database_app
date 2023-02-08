import 'package:flutter/material.dart';
import '../schema/user_schema.dart';

class UserListWidget extends StatelessWidget {
  final List<UserSchema> users;
  final Function(UserSchema) onDelete;

  const UserListWidget({
    Key? key,
    required this.users,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(10),
      shrinkWrap: true,
      itemBuilder: getItemBuilder,
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      separatorBuilder: getSeparatorBuilder,
      itemCount: users.length,
    );
  }

  Widget getItemBuilder(BuildContext context, int index) {
    UserSchema user = users[index];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              user.full_name.toString(),
            ),
          ],
        ),
        IconButton(
          onPressed: () {
            onDelete(user);
          },
          icon: Icon(
            Icons.delete,
            color: Colors.indigo,
            size: 25,
            semanticLabel: 'Delete ${user.full_name}',
          ),
        )
      ],
    );
  }

  Widget getSeparatorBuilder(BuildContext context, int index) {
    return const Divider(
      thickness: 1,
      color: Colors.indigo,
    );
  }
}
