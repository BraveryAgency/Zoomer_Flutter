import 'package:json_annotation/json_annotation.dart';

import 'broadcast_image.dart';

part 'broadcast.g.dart';

@JsonSerializable()
class Broadcast {
  Broadcast({
    required this.id,
    required this.location,
    required this.building,
    required this.images,
    required this.price,
    required this.date,
    required this.description,
    required this.icon,
    required this.sessionId,
    required this.streamName,
  });

  @JsonKey(name: "_id")
  String id;
  String location;
  String building;
  @JsonKey(name: "listImages")
  List<BroadcastImage> images;
  String price;
  String date;
  String description;
  @JsonKey(name: "icons")
  String icon;
  String sessionId;
  String streamName;

  factory Broadcast.fromJson(Map<String, dynamic> json) => _$BroadcastFromJson(json);

  Map<String, dynamic> toJson() => _$BroadcastToJson(this);
}
