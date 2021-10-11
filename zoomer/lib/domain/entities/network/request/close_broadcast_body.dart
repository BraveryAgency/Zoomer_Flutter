import 'package:json_annotation/json_annotation.dart';

part 'close_broadcast_body.g.dart';

@JsonSerializable()
class CloseBroadcastBody {
  CloseBroadcastBody({
    required this.id,
  });

  String id;

  factory CloseBroadcastBody.fromJson(Map<String, dynamic> json) => _$CloseBroadcastBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CloseBroadcastBodyToJson(this);
}
