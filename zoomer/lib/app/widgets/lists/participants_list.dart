import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_webrtc/webrtc.dart';
import 'package:zoomer/app/resources/app_colors.dart';
import 'package:zoomer/app/widgets/circle_page_indicator.dart';
import 'package:zoomer/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:zoomer/domain/entities/remote_participant_entity.dart';
import 'package:zoomer/gen/assets.gen.dart';

class ParticipantsList extends StatefulWidget {
  const ParticipantsList({
    required this.participants,
    this.pageChanged,
    required this.pageController,
    this.onMicroClicked,
    this.onCameraClicked,
  });

  final List<RemoteParticipantEntity> participants;
  final ValueChanged<int>? pageChanged;
  final PageController pageController;
  final void Function(RemoteParticipantEntity participant)? onMicroClicked;
  final VoidCallback? onCameraClicked;

  @override
  _ParticipantsListState createState() => _ParticipantsListState();
}

class _ParticipantsListState extends State<ParticipantsList> {
  late int _currentPage;
  late PageController _controller;
  late ValueNotifier<int> _pageNotifier;

  @override
  void initState() {
    super.initState();
    _currentPage = 0;
    _pageNotifier = ValueNotifier(_currentPage);
    _controller = widget.pageController;
    _pageNotifier.addListener(() {
      widget.pageChanged?.call(_pageNotifier.value);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageNotifier.dispose();
  }

  @override
  Widget build(BuildContext context) => Container(
        color: AppColors.surface,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black.withOpacity(0.07),
                    offset: Offset(0, 8),
                    blurRadius: 30,
                  ),
                ],
              ),
              child: _buildParticipants(),
            ),
            const SizedBox(height: 10),
            _buildPageIndicator(),
          ],
        ),
      );

  Widget _buildParticipants() => SizedBox(
        height: 240,
        child: ScrollConfiguration(
          behavior: const DisableGrowEffectScrollBehavior(),
          child: PageView.builder(
            itemCount: widget.participants.length,
            onPageChanged: (int page) {
              _currentPage = page;
              _pageNotifier.value = _currentPage;
            },
            controller: _controller,
            itemBuilder: (context, index) => _buildParticipant(widget.participants[index]),
          ),
        ),
      );

  Widget _buildParticipant(RemoteParticipantEntity remoteParticipant) => Container(
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: RTCVideoView(remoteParticipant.renderer),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const SizedBox(width: 10),
                Expanded(child: _buildName(name: remoteParticipant.participant.userName ?? '')),
                const SizedBox(width: 10),
                _buildMicroButton(remoteParticipant),
                // const SizedBox(width: 16),
                // _buildCameraButton(context),
                const SizedBox(width: 10),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      );

  Widget _buildName({required String name}) => Text(
        name,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: AppColors.black,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      );

  Widget _buildMicroButton(RemoteParticipantEntity participant) => GestureDetector(
        onTap: () {
          widget.onMicroClicked?.call(participant);
        },
        child: SvgPicture.asset(
          participant.microEnabled ? Assets.images.microphoneOn : Assets.images.microphoneOff,
          height: 40,
          width: 40,
        ),
      );

  Widget _buildCameraButton(context) => GestureDetector(
      onTap: () {
        widget.onCameraClicked?.call();
      },
      child: SvgPicture.asset(
        Assets.images.cameraOn,
        height: 45,
        width: 45,
      ));

  Widget _buildPageIndicator() {
    if (widget.participants.length < 2) {
      return SizedBox(height: 8);
    }
    return CirclePageIndicator(
      selectedDotColor: AppColors.accent,
      dotColor: AppColors.gray,
      dotSpacing: 10,
      size: 8,
      selectedSize: 8,
      selectedWidth: 20,
      currentPageNotifier: _pageNotifier,
      itemCount: widget.participants.length,
    );
  }
}
