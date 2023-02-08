// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_schema.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class UserSchema extends _UserSchema
    with RealmEntity, RealmObjectBase, RealmObject {
  UserSchema({
    int? id,
    String? full_name,
    String? username,
    String? password,
    String? email,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'full_name', full_name);
    RealmObjectBase.set(this, 'username', username);
    RealmObjectBase.set(this, 'password', password);
    RealmObjectBase.set(this, 'email', email);
  }

  UserSchema._();

  @override
  int? get id => RealmObjectBase.get<int>(this, 'id') as int?;
  @override
  set id(int? value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get full_name =>
      RealmObjectBase.get<String>(this, 'full_name') as String?;
  @override
  set full_name(String? value) => RealmObjectBase.set(this, 'full_name', value);

  @override
  String? get username =>
      RealmObjectBase.get<String>(this, 'username') as String?;
  @override
  set username(String? value) => RealmObjectBase.set(this, 'username', value);

  @override
  String? get password =>
      RealmObjectBase.get<String>(this, 'password') as String?;
  @override
  set password(String? value) => RealmObjectBase.set(this, 'password', value);

  @override
  String? get email => RealmObjectBase.get<String>(this, 'email') as String?;
  @override
  set email(String? value) => RealmObjectBase.set(this, 'email', value);

  @override
  Stream<RealmObjectChanges<UserSchema>> get changes =>
      RealmObjectBase.getChanges<UserSchema>(this);

  @override
  UserSchema freeze() => RealmObjectBase.freezeObject<UserSchema>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(UserSchema._);
    return const SchemaObject(
        ObjectType.realmObject, UserSchema, 'UserSchema', [
      SchemaProperty('id', RealmPropertyType.int, optional: true),
      SchemaProperty('full_name', RealmPropertyType.string, optional: true),
      SchemaProperty('username', RealmPropertyType.string, optional: true),
      SchemaProperty('password', RealmPropertyType.string, optional: true),
      SchemaProperty('email', RealmPropertyType.string, optional: true),
    ]);
  }
}
