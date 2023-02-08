import 'package:realm/realm.dart';

import '../../features/users_list/schema/user_schema.dart';

/// base realm service class
/// contains config and utility methods
class RealmService {
  /// we can add more schemas here in the list
  /// schemaVersion = 1 is the current version
  /// must be updated if migration is required
  final Configuration _config = Configuration.local(
    [UserSchema.schema],
    schemaVersion: 1,
  );
  late Realm _realm;

  Realm get realm => _realm;

  RealmService() {
    openRealm();
  }

  openRealm() {
    _realm = Realm(_config);
  }

  closeRealm() {
    if (!_realm.isClosed) {
      _realm.close();
    }
  }
}
