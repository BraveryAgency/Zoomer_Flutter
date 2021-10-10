import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zoomer/app/presentation/screens/sign_in/bloc/sign_in_bloc.dart';
import 'package:zoomer/app/presentation/screens/sign_in/sign_in_screen.dart';
import 'package:zoomer/app/presentation/screens/upcoming_broadcast/upcoming_broadcast_screen.dart';
import 'package:zoomer/app/presentation/screens/upcoming_broadcast/bloc/upcoming_broadcast_bloc.dart';
import 'package:zoomer/app/presentation/screens/broadcast/broadcast_screen.dart';
import 'package:zoomer/app/presentation/screens/broadcast/bloc/broadcast_bloc.dart';

import 'package:zoomer/di/injection.dart';
import 'package:zoomer/domain/entities/broadcast_entity.dart';

class AppNavigator {
  static const _signInRoute = '/signIn';
  static const _upcomingBroadcastRoute = '/upcomingBroadcast';
  static const _broadcastRoute = '/broadcast';

  static void navigateToSignIn(BuildContext context, {bool removeUntil = false}) {
    MaterialPageRoute route = MaterialPageRoute(
      settings: RouteSettings(name: _signInRoute),
      builder: (BuildContext context) => BlocProvider(
        create: (context) => SignInBloc(authorizationRepository: injection(), preferencesLocalGateway: injection(),
          
        ),
        child: SignInScreen(),
      ),
    );
    if (removeUntil) {
      Navigator.pushAndRemoveUntil(context, route, (route) => false);
    } else {
      Navigator.pushReplacement(context, route);
    }
  }

  static void navigateToUpcomingBroadcast(BuildContext context) {
    MaterialPageRoute route = MaterialPageRoute(
      settings: RouteSettings(name: _upcomingBroadcastRoute),
      builder: (BuildContext context) => BlocProvider(
        create: (context) => UpcomingBroadcastBloc(
          preferencesLocalGateway: injection(),
          broadcastRepository: injection(),
        ),
        child: UpcomingBroadcastScreen(),
      ),
    );
    Navigator.push(context, route);
  }

  static void navigateToBroadcast(BuildContext context,{required BroadcastEntity broadcast}) {
    MaterialPageRoute route = MaterialPageRoute(
      settings: RouteSettings(name: _broadcastRoute),
      builder: (BuildContext context) => BlocProvider(
        create: (context) => BroadcastBloc(
          broadcast: broadcast
        ),
        child: BroadcastScreen(),
      ),
    );
    Navigator.push(context, route);
  }

}
