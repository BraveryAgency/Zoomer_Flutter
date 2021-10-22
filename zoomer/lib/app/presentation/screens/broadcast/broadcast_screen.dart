import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_webrtc/webrtc.dart';
import 'package:zoomer/app/navigation/app_navigator.dart';
import 'package:zoomer/app/navigation/navigation_actions.dart';
import 'package:zoomer/app/resources/app_colors.dart';
import 'package:zoomer/app/widgets/app_bars/default_appbar.dart';
import 'package:zoomer/app/widgets/lists/participants_list.dart';
import 'package:zoomer/core/bloc/bloc_action.dart';
import 'package:zoomer/core/ui/widgets/base_bloc_state.dart';
import 'package:zoomer/core/ui/widgets/dialogs.dart';
import 'package:zoomer/core/ui/widgets/loader_dialog.dart';
import 'package:zoomer/domain/entities/remote_participant_entity.dart';
import 'package:zoomer/gen/assets.gen.dart';
import 'package:zoomer/localization/app_localizations.dart';
import 'package:zoomer/utils/open_vidu/signaling.dart';

import 'bloc/broadcast_bloc.dart';

class BroadcastScreen extends StatefulWidget {
  @override
  _BroadcastScreenState createState() => _BroadcastScreenState();
}

class _BroadcastScreenState extends BaseBlocState<BroadcastScreen, BroadcastBloc> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance!.addObserver(this);
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    // These are the callbacks
    switch (state) {
      case AppLifecycleState.resumed:
        getBloc(context).add(BroadcastEvent.screenOpened());
        // widget is resumed
        break;
      case AppLifecycleState.inactive:
        // widget is inactive
        break;
      case AppLifecycleState.paused:
        // widget is paused
        break;
      case AppLifecycleState.detached:
        // widget is detached
        break;
    }
  }

  final PageController _pageController = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: _buildBody(context),
          ),
        ),
      );

  Widget _buildBody(BuildContext context) => BlocListener<BroadcastBloc, BroadcastState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) {
          BlocAction? action = state.action;

          if (action is ShowMessage) {
            showMessage(context, action: action);
          }
          if (action is ShowLoader) {
            LoaderDialog.show(context: context);
          }

          if (action is HideLoader) {
            Navigator.pop(context);
          }
          if (action is NavigateBack) {
            AppNavigator.navigateToUpcomingBroadcast(context);
          }
        },
        child: BlocBuilder<BroadcastBloc, BroadcastState>(
          buildWhen: (previous, current) => previous.isExpanded != current.isExpanded,
          builder: (context, state) => Stack(
            children: [
              Column(
                children: [
                  Expanded(child: _buildBroadcastArea(context)),
                  if (!state.isExpanded) _buildRemoteParticipantsSection(context),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20, bottom: state.isExpanded ? 32 : 257),
                  child: _buildExpandButton(),
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buildExpandButton() => BlocBuilder<BroadcastBloc, BroadcastState>(
      buildWhen: (previous, current) =>
          previous.isExpanded != current.isExpanded || previous.participants != current.participants,
      builder: (context, state) {
        if (state.participants.isEmpty) {
          return SizedBox();
        }
        return GestureDetector(
          onTap: () {
            getBloc(context).add(BroadcastEvent.expandClicked());
          },
          child: SvgPicture.asset(
            state.isExpanded ? Assets.images.arrowUpButton : Assets.images.arrowDownButton,
            width: 45,
            height: 45,
          ),
        );
      });

  PreferredSizeWidget _buildAppBar(context) => DefaultAppBar(
        firstButton: SvgPicture.asset(Assets.images.exit, height: 35, width: 107),
        onFirstButtonPressed: () {
          _showModalDialog(context);
        },
      );

  Widget _buildBroadcastArea(context) => ClipRect(
        child: Stack(
          children: [
            Positioned.fill(
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(pi),
                child: _buildBroadcastVideo(),
              ),
              // _buildBroadcastVideo(),
            ),
            Positioned(
              left: 20,
              top: 20,
              child: _buildBroadcastHeader(),
            ),
            Positioned(
              right: 20,
              top: 20,
              child: _buildBroadcastTime(),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: _buildButtons(context),
            )
          ],
        ),
      );

  Widget _buildBroadcastVideo() => BlocBuilder<BroadcastBloc, BroadcastState>(
        buildWhen: (previous, current) =>
            previous.broadcast.renderer != current.broadcast.renderer || previous.cameraSide != current.cameraSide,
        builder: (context, state) {
          if (state.broadcast.renderer == null) {
            return Container();
          }
          if (state.cameraSide == CameraSide.front) {
            return RTCVideoView(state.broadcast.renderer!);
          } else {
            return Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(pi),
              child: RTCVideoView(state.broadcast.renderer!),
            );
          }
        },
      );

  Widget _buildBroadcastHeader() => BlocBuilder<BroadcastBloc, BroadcastState>(
        buildWhen: (previous, current) => previous.broadcast != current.broadcast,
        builder: (context, state) {
          if (state.broadcast == null) return SizedBox();
          return Container(
            height: 45,
            decoration: BoxDecoration(
              color: AppColors.background2,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildBroadcastIcon(),
                const SizedBox(width: 8),
                _buildBroadcastBuilding(),
                const SizedBox(width: 21),
              ],
            ),
          );
        },
      );

  Widget _buildBroadcastIcon() => BlocBuilder<BroadcastBloc, BroadcastState>(
      buildWhen: (previous, current) => previous.broadcast?.icon != current.broadcast?.icon,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(left: 13, top: 7.5, bottom: 7.5),
          child: Container(
            child: ClipOval(
              child: Image.network(
                state.broadcast!.icon,
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
            ),
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              border: new Border.all(
                color: AppColors.primary,
                width: 1.5,
              ),
            ),
          ),
        );
      });

  Widget _buildBroadcastBuilding() => BlocBuilder<BroadcastBloc, BroadcastState>(
        buildWhen: (previous, current) => previous.broadcast?.building != current.broadcast?.building,
        builder: (context, state) {
          return Text(
            state.broadcast!.building,
            style: TextStyle(color: AppColors.black, fontWeight: FontWeight.w400, fontSize: 15, height: 22 / 15),
          );
        },
      );

  Widget _buildBroadcastTime() => BlocBuilder<BroadcastBloc, BroadcastState>(
        buildWhen: (previous, current) => previous.broadcastTimer != current.broadcastTimer,
        builder: (context, state) {
          if (state.broadcastTimer == null) return SizedBox();
          return Container(
            height: 45,
            padding: const EdgeInsets.all(13),
            decoration: BoxDecoration(
              color: AppColors.background2,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              state.broadcastTimer,
              style: TextStyle(
                color: AppColors.black,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                height: 22 / 15,
              ),
            ),
          );
        },
      );

  Widget _buildButtons(context) => Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _buildMuteButton(context),
          const SizedBox(width: 16),
          _buildCameraButton(context),
          const SizedBox(width: 16),
          _buildSwitchCameraButton(context),
        ],
      );

  Widget _buildMuteButton(context) => BlocBuilder<BroadcastBloc, BroadcastState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              getBloc(context).add(BroadcastEvent.microClicked());
            },
            child: SvgPicture.asset(
              (state.isMicrophoneEnabled) ? Assets.images.microphoneOn : Assets.images.microphoneOff,
              height: 45,
              width: 45,
            ),
          );
        },
      );

  Widget _buildCameraButton(context) => BlocBuilder<BroadcastBloc, BroadcastState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              getBloc(context).add(BroadcastEvent.cameraClicked());
            },
            child: SvgPicture.asset(
              (state.isCameraEnabled) ? Assets.images.cameraOn : Assets.images.cameraOff,
              height: 45,
              width: 45,
            ),
          );
        },
      );

  Widget _buildSwitchCameraButton(context) => GestureDetector(
        onTap: () {
          getBloc(context).add(BroadcastEvent.cameraSwitchClicked());
        },
        child: SvgPicture.asset(
          Assets.images.switchCamera,
          height: 45,
          width: 45,
        ),
      );

  Widget _buildRemoteParticipantsSection(BuildContext context) => BlocBuilder<BroadcastBloc, BroadcastState>(
      buildWhen: (previous, current) => previous.participants != current.participants,
      builder: (context, state) {
        if (state.participants.isEmpty) {
          return SizedBox();
        }
        return Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: ParticipantsList(
            participants: state.participants,
            pageController: _pageController,
            onMicroClicked: (RemoteParticipantEntity participant) {
              getBloc(context).add(BroadcastEvent.participantMicroClicked(participant));
            },
          ),
        );
      });

  Future<void> _showModalDialog(BuildContext context) async => showDialog<void>(
        context: context,
        barrierDismissible: true, // user must tap button!
        builder: (_) => AlertDialog(
          titlePadding: const EdgeInsets.all(20),
          actionsPadding: const EdgeInsets.only(right: 10, bottom: 10),
          title: Text(
            AppLocalizations.of(context).wantToEndStream,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Text(
                AppLocalizations.of(context).no,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(width: 2),
            GestureDetector(
              onTap: () {
                getBloc(context).add(BroadcastEvent.leaveClicked());
                Navigator.of(context).pop();
              },
              child: Text(
                AppLocalizations.of(context).yes,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      );
}
