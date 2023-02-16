// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_schema.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class AddressSchema extends $AddressSchema
    with RealmEntity, RealmObjectBase, RealmObject {
  AddressSchema({
    String? city,
    String? streetName,
    String? streetAddress,
    String? zipCode,
    String? state,
    String? country,
  }) {
    RealmObjectBase.set(this, 'city', city);
    RealmObjectBase.set(this, 'streetName', streetName);
    RealmObjectBase.set(this, 'streetAddress', streetAddress);
    RealmObjectBase.set(this, 'zipCode', zipCode);
    RealmObjectBase.set(this, 'state', state);
    RealmObjectBase.set(this, 'country', country);
  }

  AddressSchema._();

  @override
  String? get city => RealmObjectBase.get<String>(this, 'city') as String?;
  @override
  set city(String? value) => RealmObjectBase.set(this, 'city', value);

  @override
  String? get streetName =>
      RealmObjectBase.get<String>(this, 'streetName') as String?;
  @override
  set streetName(String? value) =>
      RealmObjectBase.set(this, 'streetName', value);

  @override
  String? get streetAddress =>
      RealmObjectBase.get<String>(this, 'streetAddress') as String?;
  @override
  set streetAddress(String? value) =>
      RealmObjectBase.set(this, 'streetAddress', value);

  @override
  String? get zipCode =>
      RealmObjectBase.get<String>(this, 'zipCode') as String?;
  @override
  set zipCode(String? value) => RealmObjectBase.set(this, 'zipCode', value);

  @override
  String? get state => RealmObjectBase.get<String>(this, 'state') as String?;
  @override
  set state(String? value) => RealmObjectBase.set(this, 'state', value);

  @override
  String? get country =>
      RealmObjectBase.get<String>(this, 'country') as String?;
  @override
  set country(String? value) => RealmObjectBase.set(this, 'country', value);

  @override
  Stream<RealmObjectChanges<AddressSchema>> get changes =>
      RealmObjectBase.getChanges<AddressSchema>(this);

  @override
  AddressSchema freeze() => RealmObjectBase.freezeObject<AddressSchema>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(AddressSchema._);
    return const SchemaObject(
        ObjectType.realmObject, AddressSchema, 'AddressSchema', [
      SchemaProperty('city', RealmPropertyType.string, optional: true),
      SchemaProperty('streetName', RealmPropertyType.string, optional: true),
      SchemaProperty('streetAddress', RealmPropertyType.string, optional: true),
      SchemaProperty('zipCode', RealmPropertyType.string, optional: true),
      SchemaProperty('state', RealmPropertyType.string, optional: true),
      SchemaProperty('country', RealmPropertyType.string, optional: true),
    ]);
  }
}
