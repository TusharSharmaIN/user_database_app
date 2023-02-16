import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

/// user model to parse and map json response to object
@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    String? city,
    // ignore: invalid_annotation_target
    @JsonKey(name: "street_name")
    String? streetName,
    // ignore: invalid_annotation_target
    @JsonKey(name: "street_address")
    String? streetAddress,
    // ignore: invalid_annotation_target
    @JsonKey(name: "zip_code")
    String? zipCode,
    String? state,
    String? country,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}