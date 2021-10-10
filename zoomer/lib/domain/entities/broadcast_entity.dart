//import 'network/broadcast.dart';

import 'package:flutter_webrtc/webrtc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zoomer/domain/entities/briadcast_image_entity.dart';

import 'network/broadcast.dart';

part 'broadcast_entity.freezed.dart';

@freezed
class BroadcastEntity with _$BroadcastEntity {
  factory BroadcastEntity({
    required String id,
    required String location,
    required String building,
    required List<BroadcastImageEntity> images,
    required String price,
    required String description,
    required String icon,
    required String sessionId,
    required String streamName,
    RTCVideoRenderer? renderer,
  }) = _BroadcastEntity;

  factory BroadcastEntity.fromResponse(Broadcast broadcast) => BroadcastEntity(
        id: broadcast.id,
        location: broadcast.location,
        building: broadcast.building,
        images: broadcast.images!.map((element) => BroadcastImageEntity.fromResponse(element)).toList(),
        price: broadcast.price,
        description: broadcast.description,
        icon: broadcast.icon,
        sessionId: broadcast.sessionId,
        streamName: broadcast.streamName,
      );
}
