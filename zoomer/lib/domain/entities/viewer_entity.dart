//import 'network/broadcast.dart';

class ViewerEntity {
  ViewerEntity({
    required this.image,
    required this.name,
    required this.isMicrophoneEnabled,
    required this.isCameraEnabled,
  });

  String image;
  String name;
  bool isMicrophoneEnabled;
  bool isCameraEnabled;

// factory BroadcastEntity.fromResponse(Broadcast broadcast) => BroadcastEntity(
//     id: broadcast.id,
//     location: broadcast.location,
//     building: broadcast.building,
//     images: broadcast.images,
//     price: broadcast.price,
//     description: broadcast.description,
// );
}