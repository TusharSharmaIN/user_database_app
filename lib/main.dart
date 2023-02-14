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
  const int currentSchemaVersion = 3;
  final Configuration config = Configuration.local(
    [UserSchema.schema, AddressSchema.schema],
    schemaVersion: currentSchemaVersion,
    migrationCallback: (migration, oldSchemaVersion) {
      final oldUsers = migration.oldRealm.all('UserSchema');
      for (final oldUser in oldUsers) {
        final newUser = migration.findInNewRealm<UserSchema>(oldUser);
        if (oldUser.dynamic.get<int?>("id") != null) {
          newUser!.fullName = oldUser.dynamic.get<String?>("full_name");
          newUser.id = oldUser.dynamic.get<int?>("id")!;
        }
      }
    }
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
