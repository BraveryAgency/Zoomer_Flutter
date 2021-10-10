// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'broadcast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Broadcast _$BroadcastFromJson(Map<String, dynamic> json) {
  return Broadcast(
    id: json['_id'] as String,
    location: json['location'] as String,
    building: json['building'] as String,
    images: (json['listImages'] as List<dynamic>)
        .map((e) => BroadcastImage.fromJson(e as Map<String, dynamic>))
        .toList(),
    price: json['price'] as String,
    date: json['date'] as String,
    description: json['description'] as String,
    icon: json['icons'] as String,
    sessionId: json['sessionId'] as String,
    streamName: json['streamName'] as String,
  );
}

Map<String, dynamic> _$BroadcastToJson(Broadcast instance) => <String, dynamic>{
      '_id': instance.id,
      'location': instance.location,
      'building': instance.building,
      'listImages': instance.images,
      'price': instance.price,
      'date': instance.date,
      'description': instance.description,
      'icons': instance.icon,
      'sessionId': instance.sessionId,
      'streamName': instance.streamName,
    };
