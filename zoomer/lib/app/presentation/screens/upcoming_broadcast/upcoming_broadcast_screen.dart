import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoomer/app/navigation/app_navigator.dart';
import 'package:zoomer/app/navigation/navigation_actions.dart';
import 'package:zoomer/app/resources/app_colors.dart';
import 'package:zoomer/app/widgets/app_bars/default_appbar.dart';
import 'package:zoomer/app/widgets/buttons/default_button.dart';
import 'package:zoomer/app/widgets/lists/images_list.dart';
import 'package:zoomer/core/bloc/bloc_action.dart';
import 'package:zoomer/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:zoomer/core/ui/widgets/base_bloc_state.dart';
import 'package:zoomer/core/ui/widgets/dialogs.dart';
import 'package:zoomer/core/ui/widgets/loader_dialog.dart';
import 'package:zoomer/gen/assets.gen.dart';
import 'package:zoomer/localization/app_localizations.dart';

import 'bloc/upcoming_broadcast_bloc.dart';

class UpcomingBroadcastScreen extends StatefulWidget {
  @override
  _UpcomingBroadcastScreenState createState() => _UpcomingBroadcastScreenState();
}

class _UpcomingBroadcastScreenState extends BaseBlocState<UpcomingBroadcastScreen, UpcomingBroadcastBloc>
    with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance!.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    // These are the callbacks
    switch (state) {
      case AppLifecycleState.resumed:
        getBloc(context).add(UpcomingBroadcastEvent.screenOpened());
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

  @override
  Widget build(BuildContext context) => Scaffold(
        //resizeToAvoidBottomInset: true,
        body: SafeArea(
          //top: false,
          child: Scaffold(
              backgroundColor: AppColors.onBackground1, appBar: _buildAppBar(context), body: _buildBody(context)),
        ),
      );

  final PageController _pageController = PageController();

  Widget _buildBody(BuildContext context) => BlocListener<UpcomingBroadcastBloc, UpcomingBroadcastState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) {
          BlocAction? action = state.action;
          if (action is NavigateToBroadcast) {
            AppNavigator.navigateToBroadcast(context, broadcast: state.broadcast!);
          }
          if (action is ShowMessage) {
            showMessage(context, action: action);
          }
          if (action is ShowLoader) {
            LoaderDialog.show(context: context);
          }

          if (action is HideLoader) {
            Navigator.pop(context);
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
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              children: [
                const SizedBox(height: 40),
                _buildTitle(context),
                const SizedBox(height: 25),
                _buildBroadcastInfo(context),
                const SizedBox(height: 15),
                _buildStreamNowButton(),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      );

  PreferredSizeWidget _buildAppBar(context) => DefaultAppBar(
      // firstIcon: SvgPicture.asset(Assets.images.person, height: 20, width: 20),
      // onFirstButtonPressed: (){
      //   getBloc(context).add(UpcomingBroadcastEvent.profileClicked());
      // },
      // secondIcon: SvgPicture.asset(Assets.images.details, height: 20, width: 20),
      // onSecondButtonPressed:(){
      //   getBloc(context).add(UpcomingBroadcastEvent.detailsClicked());
      // },
      );

  Widget _buildTitle(context) => Center(
        child: Text(
          AppLocalizations.of(context).upcomingBroadcast,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
            height: 26 / 22,
            color: AppColors.black,
          ),
        ),
      );

  Widget _buildBroadcastInfo(context) => BlocBuilder<UpcomingBroadcastBloc, UpcomingBroadcastState>(
      buildWhen: (previous, current) => previous.broadcast != current.broadcast,
      builder: (context, state) {
        if (state.broadcast == null)
          return Column(
            children: [
              Text(
                AppLocalizations.of(context).noUpcomingBroadcastsFound,
                style:
                    TextStyle(color: AppColors.inputText, fontSize: 15, height: 21 / 15, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 50),
              Assets.images.noBroadcast.image(height: 369, width: 279),
            ],
          );
        return Container(
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBroadcastImages(),
              const SizedBox(height: 7),
              _buildBroadcastTime(),
              const SizedBox(height: 15),
              _buildBroadcastLocation(),
              const SizedBox(height: 7),
              _buildBroadcastBuilding(),
              const SizedBox(height: 15),
              _buildBroadcastDescription(),
              const SizedBox(height: 29),
              _buildBroadcastPrice(),
              const SizedBox(height: 28),
            ],
          ),
        );
      });

  Widget _buildBroadcastImages() => BlocBuilder<UpcomingBroadcastBloc, UpcomingBroadcastState>(
        buildWhen: (previous, current) => previous.broadcast?.images != current.broadcast?.images,
        builder: (context, state) {
          return Container(
              height: 220,
              padding: EdgeInsets.all(10),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: ImagesList(images: state.broadcast!.images, pageController: _pageController)));
        },
      );

  Widget _buildBroadcastTime() => BlocBuilder<UpcomingBroadcastBloc, UpcomingBroadcastState>(
        //buildWhen: (previous, current) => previous.broadcast?.time != current.broadcast?.time,
        builder: (context, state) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Text(
            'The broadcast will begin on 01 July, 2021 at 12AM',
            style: TextStyle(
              color: AppColors.green,
              fontWeight: FontWeight.w400,
              fontSize: 14,
              height: 20 / 14,
            ),
          ),
        ),
      );

  Widget _buildBroadcastLocation() => BlocBuilder<UpcomingBroadcastBloc, UpcomingBroadcastState>(
        buildWhen: (previous, current) => previous.broadcast?.location != current.broadcast?.location,
        builder: (context, state) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Row(
            children: [
              SvgPicture.asset(Assets.images.location, height: 14, width: 14),
              const SizedBox(width: 6),
              Text(
                state.broadcast!.location,
                style: TextStyle(
                  color: AppColors.inputText,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 15 / 12,
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buildBroadcastBuilding() => BlocBuilder<UpcomingBroadcastBloc, UpcomingBroadcastState>(
        buildWhen: (previous, current) => previous.broadcast?.building != current.broadcast?.building,
        builder: (context, state) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Text(
            state.broadcast!.building,
            style: TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18,
              height: 22 / 18,
            ),
          ),
        ),
      );

  Widget _buildBroadcastDescription() => BlocBuilder<UpcomingBroadcastBloc, UpcomingBroadcastState>(
        buildWhen: (previous, current) => previous.broadcast?.description != current.broadcast?.description,
        builder: (context, state) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Text(
            state.broadcast!.description,
            style: TextStyle(
              color: AppColors.inputText,
              fontWeight: FontWeight.w600,
              fontSize: 15,
              height: 21 / 15,
            ),
          ),
        ),
      );

  Widget _buildBroadcastPrice() => BlocBuilder<UpcomingBroadcastBloc, UpcomingBroadcastState>(
        buildWhen: (previous, current) => previous.broadcast?.price != current.broadcast?.price,
        builder: (context, state) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Text(
            state.broadcast!.price.toString(),
            style: TextStyle(
              color: AppColors.accent,
              fontWeight: FontWeight.w600,
              fontSize: 22,
              height: 27 / 22,
            ),
          ),
        ),
      );

  Widget _buildStreamNowButton() => BlocBuilder<UpcomingBroadcastBloc, UpcomingBroadcastState>(
      buildWhen: (previous, current) => previous.broadcast != current.broadcast,
      builder: (context, state) => (state.broadcast != null)
          ? DefaultButton(
              text: AppLocalizations.of(context).streamNow,
              onPressed: () {
                getBloc(context).add(UpcomingBroadcastEvent.streamNowClicked());
              },
            )
          : SizedBox());
}
