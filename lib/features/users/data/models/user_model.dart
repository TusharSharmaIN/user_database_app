import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// user model to parse and map json response to object
@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    int? id,
    String? first_name,
    String? last_name,
    String? username,
    String? password,
    String? email,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
