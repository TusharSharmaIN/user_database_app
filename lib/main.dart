import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:realm/realm.dart';

import 'routes/app_routes.dart';
import 'routes/routes.dart';
import 'features/users_list/data/schema/address_schema.dart';
import 'features/users_list/data/schema/user_schema.dart';
import 'utils/styles/app_theme.dart';

GetIt getIt = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initRealm();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

/// this method defines config for realm
/// and make a singleton instance accessible throughout the app
Future<void> initRealm() async {
  final Configuration config = Configuration.local(
    [UserSchema.schema, AddressSchema.schema],
    schemaVersion: 2,
  );
  getIt.registerSingleton<Realm>(Realm(config));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      routes: AppRoutes.routes,
    );
  }
}
