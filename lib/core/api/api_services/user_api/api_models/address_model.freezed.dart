// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return _AddressModel.fromJson(json);
}

/// @nodoc
mixin _$AddressModel {
  String? get city =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "street_name")
  String? get streetName =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "street_address")
  String? get streetAddress =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "zip_code")
  String? get zipCode => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressModelCopyWith<AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressModelCopyWith<$Res> {
  factory $AddressModelCopyWith(
          AddressModel value, $Res Function(AddressModel) then) =
      _$AddressModelCopyWithImpl<$Res, AddressModel>;
  @useResult
  $Res call(
      {String? city,
      @JsonKey(name: "street_name") String? streetName,
      @JsonKey(name: "street_address") String? streetAddress,
      @JsonKey(name: "zip_code") String? zipCode,
      String? state,
      String? country});
}

/// @nodoc
class _$AddressModelCopyWithImpl<$Res, $Val extends AddressModel>
    implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? streetName = freezed,
    Object? streetAddress = freezed,
    Object? zipCode = freezed,
    Object? state = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      streetName: freezed == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress: freezed == streetAddress
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressModelCopyWith<$Res>
    implements $AddressModelCopyWith<$Res> {
  factory _$$_AddressModelCopyWith(
          _$_AddressModel value, $Res Function(_$_AddressModel) then) =
      __$$_AddressModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? city,
      @JsonKey(name: "street_name") String? streetName,
      @JsonKey(name: "street_address") String? streetAddress,
      @JsonKey(name: "zip_code") String? zipCode,
      String? state,
      String? country});
}

/// @nodoc
class __$$_AddressModelCopyWithImpl<$Res>
    extends _$AddressModelCopyWithImpl<$Res, _$_AddressModel>
    implements _$$_AddressModelCopyWith<$Res> {
  __$$_AddressModelCopyWithImpl(
      _$_AddressModel _value, $Res Function(_$_AddressModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? streetName = freezed,
    Object? streetAddress = freezed,
    Object? zipCode = freezed,
    Object? state = freezed,
    Object? country = freezed,
  }) {
    return _then(_$_AddressModel(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      streetName: freezed == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress: freezed == streetAddress
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressModel implements _AddressModel {
  const _$_AddressModel(
      {this.city,
      @JsonKey(name: "street_name") this.streetName,
      @JsonKey(name: "street_address") this.streetAddress,
      @JsonKey(name: "zip_code") this.zipCode,
      this.state,
      this.country});

  factory _$_AddressModel.fromJson(Map<String, dynamic> json) =>
      _$$_AddressModelFromJson(json);

  @override
  final String? city;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "street_name")
  final String? streetName;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "street_address")
  final String? streetAddress;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "zip_code")
  final String? zipCode;
  @override
  final String? state;
  @override
  final String? country;

  @override
  String toString() {
    return 'AddressModel(city: $city, streetName: $streetName, streetAddress: $streetAddress, zipCode: $zipCode, state: $state, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressModel &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.streetName, streetName) ||
                other.streetName == streetName) &&
            (identical(other.streetAddress, streetAddress) ||
                other.streetAddress == streetAddress) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, city, streetName, streetAddress, zipCode, state, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressModelCopyWith<_$_AddressModel> get copyWith =>
      __$$_AddressModelCopyWithImpl<_$_AddressModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressModelToJson(
      this,
    );
  }
}

abstract class _AddressModel implements AddressModel {
  const factory _AddressModel(
      {final String? city,
      @JsonKey(name: "street_name") final String? streetName,
      @JsonKey(name: "street_address") final String? streetAddress,
      @JsonKey(name: "zip_code") final String? zipCode,
      final String? state,
      final String? country}) = _$_AddressModel;

  factory _AddressModel.fromJson(Map<String, dynamic> json) =
      _$_AddressModel.fromJson;

  @override
  String? get city;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "street_name")
  String? get streetName;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "street_address")
  String? get streetAddress;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "zip_code")
  String? get zipCode;
  @override
  String? get state;
  @override
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$_AddressModelCopyWith<_$_AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}
