import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/extensions/response_status.dart';
import '../data/models/user_model.dart';
import '../provider/user_provider.dart';

class UserPage extends ConsumerWidget {
  const UserPage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userDataProvider).user;
    final userResponseStatus = ref.watch(userDataProvider).status;

    return Scaffold(
      floatingActionButton: const RefreshUser(),
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          userResponseStatus.isLoading()
              ? const Center(child: CircularProgressIndicator())
              : Center(child: UserCardView(userData: user)),
        ],
      ),
    );
  }
}

class UserCardView extends StatelessWidget {
  const UserCardView({
    Key? key,
    required this.userData,
  }) : super(key: key);

  final UserModel userData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Id: ${userData.id.toString()}",
        ),
        Text(
          "Name: ${userData.first_name} ${userData.last_name}",
        ),
        Text(
          "Username: ${userData.username}",
        ),
        Text(
          "Email: ${userData.email}",
        ),
      ],
    );
  }
}

class RefreshUser extends ConsumerWidget {
  const RefreshUser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: ref.read(userDataProvider.notifier).getUser,
      child: const Icon(Icons.refresh),
    );
  }
}
