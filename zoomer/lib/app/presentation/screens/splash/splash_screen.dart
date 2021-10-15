import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zoomer/app/navigation/app_navigator.dart';
import 'package:zoomer/app/navigation/navigation_actions.dart';
import 'package:zoomer/app/resources/app_colors.dart';
import 'package:zoomer/core/ui/widgets/base_bloc_state.dart';
import 'package:zoomer/di/injection.dart';

import 'bloc/splash_bloc.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends BaseBlocState<SplashScreen, SplashBloc> {
  @override
  Widget build(BuildContext context) => BlocListener<SplashBloc, SplashState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) async {
          var action = state.action;
          if (action is NavigateToSignIn) {
            await setUpLocatorWithContext(context);
            AppNavigator.navigateToSignIn(context);
          }
          if (action is NavigateToUpcomingBroadcast) {
            AppNavigator.navigateToUpcomingBroadcast(context);
          }
        },
        child: Container(color: AppColors.background),
      );
}
