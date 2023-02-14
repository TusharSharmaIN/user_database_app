import 'package:freezed_annotation/freezed_annotation.dart';

import 'address_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// user model to parse and map json response to object
@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    int? id,
    // ignore: invalid_annotation_target
    @JsonKey(name: "first_name")
    String? firstName,
    // ignore: invalid_annotation_target
    @JsonKey(name: "last_name")
    String? lastName,
    String? username,
    String? password,
    String? email,
    AddressModel? address,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
