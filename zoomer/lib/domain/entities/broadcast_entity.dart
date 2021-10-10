//import 'network/broadcast.dart';

import 'package:flutter_webrtc/webrtc.dart';
import 'package:zoomer/domain/entities/briadcast_image_entity.dart';

import 'network/broadcast.dart';

class BroadcastEntity {
  BroadcastEntity({
    required this.id,
    required this.location,
    required this.building,
    required this.images,
    required this.price,
    required this.description,
    required this.icon,
    required this.sessionId,
    required this.streamName,
    this.renderer,
  });

  String id;
  String location;
  String building;
  List<BroadcastImageEntity> images;
  String price;
  String description;
  String icon;
  String sessionId;
  String streamName;
  RTCVideoRenderer? renderer;

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
