import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoomer/app/navigation/app_navigator.dart';
import 'package:zoomer/app/navigation/navigation_actions.dart';
import 'package:zoomer/app/resources/app_colors.dart';
import 'package:zoomer/app/widgets/app_bars/default_appbar.dart';
import 'package:zoomer/app/widgets/lists/viewers_list.dart';
import 'package:zoomer/core/bloc/bloc_action.dart';
import 'package:zoomer/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:zoomer/core/ui/widgets/base_bloc_stateless_widget.dart';
import 'package:zoomer/core/ui/widgets/dialogs.dart';
import 'package:zoomer/core/ui/widgets/loader_dialog.dart';
import 'package:zoomer/gen/assets.gen.dart';

import 'bloc/broadcast_bloc.dart';

class BroadcastScreen extends BaseBlocStatelessWidget<BroadcastBloc> {
  @override
  Widget build(BuildContext context) => Scaffold(
        //resizeToAvoidBottomInset: true,
        body: SafeArea(
          //top: false,
          child: Scaffold(appBar: _buildAppBar(context), body: _buildBody(context)),
        ),
      );

  PageController _pageController = PageController();

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
          if (action is NavigateToUpcomingBroadcast){
            AppNavigator.navigateToUpcomingBroadcast(context);
          }
          // if (action is NavigateToNavigation) {
          //   AppNavigator.navigateToNavigation(context);
          // }
          // if (action is NavigateToConfirmPhone) {
          //   AppNavigator.navigateToConfirmPhone(
          //     context,
          //     confirmPhoneType: action.confirmPhoneType,
          //     phone: action.phone,
          //   );
          // }
        },
        child: ScrollConfiguration(
          behavior: const DisableGrowEffectScrollBehavior(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildBroadcastArea(context),
                const SizedBox(height: 50),
                _buildUsersItems(context),
                const SizedBox(height: 70),
              ],
            ),
          ),
        ),
      );

  PreferredSizeWidget _buildAppBar(context) => DefaultAppBar(
        firstIcon: SvgPicture.asset(Assets.images.exit, height: 35, width: 107),
        firstIconPadding: EdgeInsets.symmetric(vertical: 18),
        onFirstButtonPressed:(){
          getBloc(context).add(BroadcastEvent.leaveClicked());
        } ,
      );

  Widget _buildBroadcastArea(context) => Stack(
        children: [
          _buildBroadcastVideo(),
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
      );

  Widget _buildBroadcastVideo() => SizedBox(
        height: 483,
        child: Image.network(
          'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          fit: BoxFit.cover,
        ),
      );

  Widget _buildBroadcastHeader() => BlocBuilder<BroadcastBloc, BroadcastState>(
        builder: (context, state) {
          if (state.broadcast == null) return SizedBox();
          return Container(
            height: 45,
            decoration: BoxDecoration(
              color: AppColors.onBackground2,
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
              color: AppColors.onBackground2,
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

  Widget _buildMuteButton(context) => GestureDetector(
      onTap: () {
        getBloc(context).add(BroadcastEvent.muteClicked());
      },
      child: SvgPicture.asset(Assets.images.mute, height: 45, width: 45));

  Widget _buildCameraButton(context) => GestureDetector(
      onTap: () {
        getBloc(context).add(BroadcastEvent.cameraClicked());
      },
      child: SvgPicture.asset(Assets.images.camera, height: 45, width: 45));

  Widget _buildSwitchCameraButton(context) => GestureDetector(
      onTap: () {
        getBloc(context).add(BroadcastEvent.cameraSwitchClicked());
      },
      child: SvgPicture.asset(Assets.images.switchCamera, height: 45, width: 45));


  Widget _buildUsersItems(context) => BlocBuilder<BroadcastBloc, BroadcastState>(
        buildWhen: (previous, current) => previous.viewers != current.viewers,
        builder: (context, state) {
          if (state.viewers == null || state.viewers.isEmpty) return SizedBox();
          return ViewersList(viewers: state.viewers, pageController: _pageController);
        },
      );
}
