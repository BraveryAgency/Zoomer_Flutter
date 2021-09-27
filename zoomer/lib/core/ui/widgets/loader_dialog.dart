import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zoomer/app/resources/app_colors.dart';
import 'package:zoomer/core/ui/widgets/circular_progress.dart';

class LoaderDialog {
  static Future<void> show({
    Key? key,
    required BuildContext context,
  }) async =>
      showDialog(
        context: context,
        barrierDismissible: false,
        useRootNavigator: false,
        builder: (BuildContext context) => WillPopScope(
          child: SimpleDialog(
            elevation: 0,
            backgroundColor: Colors.transparent,
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: AppColors.background,
                      shape: BoxShape.circle,
                    ),
                    child: CircularProgress(
                      size: 56,
                      strokeWidth: 7,
                      primaryColor: AppColors.accent,
                      secondaryColor: AppColors.background,
                    ),
                  ),
                ),
              ),
            ],
          ),
          onWillPop: () async => false,
        ),
      );
}
