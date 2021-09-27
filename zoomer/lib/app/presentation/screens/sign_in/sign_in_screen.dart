import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zoomer/app/widgets/buttons/default_button.dart';
import 'package:zoomer/app/widgets/checkboxes/app_checkbox.dart';
import 'package:zoomer/app/widgets/inputs/default_input.dart';
import 'package:zoomer/app/widgets/inputs/password_input.dart';
import 'package:zoomer/core/bloc/bloc_action.dart';
import 'package:zoomer/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:zoomer/core/ui/widgets/base_bloc_stateless_widget.dart';
import 'package:zoomer/core/ui/widgets/dialogs.dart';
import 'package:zoomer/core/ui/widgets/loader_dialog.dart';
import 'package:zoomer/gen/assets.gen.dart';
import 'package:zoomer/localization/app_localizations.dart';

import 'bloc/sign_in_bloc.dart';

class SignInScreen extends BaseBlocStatelessWidget<SignInBloc> {
  @override
  Widget build(BuildContext context) => Scaffold(
    resizeToAvoidBottomInset: true,
    body: SafeArea(
      top: false,
      child: _buildBody(context),
    ),
  );

  Widget _buildBody(BuildContext context) => BlocListener<SignInBloc, SignInState>(
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 140),
              _buildLogo(),
              const SizedBox(height: 60),
              _buildEmailInput(),
              const SizedBox(height: 16),
              _buildPasswordInput(),
              const SizedBox(height: 30),
              _buildRememberMeCheckBox(),
              const SizedBox(height: 30),
              _buildEnterButton(context),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
  );

  Widget _buildLogo() => Assets.images.logo.image(height: 37, width: 158);



  Widget _buildEmailInput() => BlocBuilder<SignInBloc, SignInState>(
    buildWhen: (previousState, currentState) =>
    previousState.email != currentState.email,
    builder: (context, state) => DefaultInput(
      title: AppLocalizations.of(context).email,
     // contentPadding: EdgeInsets.only(left: 14, right: 14, top: 18, bottom: 18),
    )
  );

  Widget _buildPasswordInput() => BlocBuilder<SignInBloc, SignInState>(
    buildWhen: (previousState, currentState) =>
    previousState.password != currentState.password || previousState.errorMessage != currentState.errorMessage,
    builder: (context, state) => PasswordInput(
        password: state.password.value,
        title: AppLocalizations.of(context).password,
        haveError: state.errorMessage != null,
        onChanged: (password) {
          getBloc(context).add(SignInEvent.passwordChanged(password));
        }),
  );

  Widget _buildEnterButton(BuildContext context) => DefaultButton(
    text: AppLocalizations.of(context).logIn,
    onPressed: () {
      getBloc(context).add(SignInEvent.enterClicked());
    },
  );

  Widget _buildRememberMeCheckBox() => BlocBuilder<SignInBloc, SignInState>(
    buildWhen: (previousState, currentState) => previousState.rememberMeChecked != currentState.rememberMeChecked,
    builder: (context, state) => AppCheckbox(
      checked: state.rememberMeChecked,
      title: AppLocalizations.of(context).rememberMe,
      onPressed: () {
        getBloc(context).add(SignInEvent.rememberMeClicked());
      },
    ),
  );

  // Widget _buildErrorMessage() => BlocBuilder<SignInBloc, SignInState>(
  //   buildWhen: (previousState, currentState) => previousState.errorMessage != currentState.errorMessage,
  //   builder: (context, state) {
  //     if (state.errorMessage == null) {
  //       return SizedBox(height: 14);
  //     }
  //     return Align(
  //       alignment: Alignment.centerLeft,
  //       child: Row(
  //         mainAxisSize: MainAxisSize.min,
  //         children: [
  //           Text(
  //             state.errorMessage!,
  //             style: TextStyle(
  //               color: AppColors.error,
  //               fontSize: 12,
  //               fontWeight: FontWeight.w600,
  //             ),
  //           ),
  //           SizedBox(width: 4),
  //           if (state.errorMessage == AppLocalizations.of(context).invalidLoginOrPassword)
  //             DefaultTextButton(
  //               text: AppLocalizations.of(context).recover,
  //               textStyle: TextStyle(
  //                 color: AppColors.onBackground1,
  //                 fontSize: 12,
  //                 fontWeight: FontWeight.w600,
  //               ),
  //               padding: EdgeInsets.zero,
  //               onPressed: () {
  //                 getBloc(context).add(SignInEvent.recoverClicked());
  //               },
  //             ),
  //         ],
  //       ),
  //     );
  //   },
  // );
}
