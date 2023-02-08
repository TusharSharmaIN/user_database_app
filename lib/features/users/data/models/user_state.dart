import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../services/network/constant/api_response.dart';
import 'user_model.dart';

part 'user_state.freezed.dart';

/// user state which binds user model and response status
/// this is used to manage the response state (or any other states too)
@freezed
class UserState with _$UserState {
  factory UserState({
    @Default(UserModel()) UserModel user,
    @Default(RESPONSE_STATUS.idle) RESPONSE_STATUS status,
  }) = _UserState;
}
