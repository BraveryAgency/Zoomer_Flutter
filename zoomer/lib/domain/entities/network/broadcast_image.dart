import 'package:json_annotation/json_annotation.dart';


part 'broadcast_image.g.dart';

@JsonSerializable()
class BroadcastImage {
  BroadcastImage({
    required this.image,
  });

  @JsonKey(name: "img")
  String image;

  factory BroadcastImage.fromJson(Map<String, dynamic> json) => _$BroadcastImageFromJson(json);

  Map<String, dynamic> toJson() => _$BroadcastImageToJson(this);
}