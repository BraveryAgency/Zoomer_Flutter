import 'package:flutter_webrtc/webrtc.dart';
import 'package:zoomer/utils/open_vidu/signaling.dart';

class RemoteParticipantEntity {
  RemoteParticipantEntity({
    required this.participant,
    required this.renderer,
    this.microEnabled = true,
  });

  RemoteParticipant participant;
  RTCVideoRenderer renderer;
  bool microEnabled;
}
