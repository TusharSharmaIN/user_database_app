import 'package:flutter/material.dart';

import '../../../routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(Routes.user),
              child: const Text("Get User from API"),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(Routes.usersList),
              child: const Text("CRUD on Users"),
            ),
          ],
        ),
      ),
    );
  }
}
