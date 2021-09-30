//import 'network/broadcast.dart';

class BroadcastEntity {
  BroadcastEntity({
    required this.id,
    required this.location,
    required this.building,
    required this.images,
    required this.price,
    required this.description,
    required this.icon,
  });

  String id;
  String location;
  String building;
  List<String> images;
  double price;
  String description;
  String icon;

  // factory BroadcastEntity.fromResponse(Broadcast broadcast) => BroadcastEntity(
  //     id: broadcast.id,
  //     location: broadcast.location,
  //     building: broadcast.building,
  //     images: broadcast.images,
  //     price: broadcast.price,
  //     description: broadcast.description,
  // );
}