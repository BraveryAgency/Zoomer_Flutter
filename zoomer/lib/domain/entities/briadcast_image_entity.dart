import 'network/broadcast_image.dart';

class BroadcastImageEntity {
  BroadcastImageEntity({
    required this.url,
  });

  String url;

  factory BroadcastImageEntity.fromResponse(BroadcastImage broadcastImage) => BroadcastImageEntity(
    url: broadcastImage.image,
  );
}