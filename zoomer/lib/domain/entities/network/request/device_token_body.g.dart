// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_token_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceTokenBody _$DeviceTokenBodyFromJson(Map<String, dynamic> json) {
  return DeviceTokenBody(
    deviceToken: json['token'] as String,
  );
}

Map<String, dynamic> _$DeviceTokenBodyToJson(DeviceTokenBody instance) =>
    <String, dynamic>{
      'token': instance.deviceToken,
    };
