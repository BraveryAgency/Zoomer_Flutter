import 'package:json_annotation/json_annotation.dart';

part 'device_token_body.g.dart';

@JsonSerializable()
class DeviceTokenBody {
  DeviceTokenBody({
    required this.deviceToken,
  });

  @JsonKey(name: "token")
  String deviceToken;

  factory DeviceTokenBody.fromJson(Map<String, dynamic> json) => _$DeviceTokenBodyFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceTokenBodyToJson(this);
}
