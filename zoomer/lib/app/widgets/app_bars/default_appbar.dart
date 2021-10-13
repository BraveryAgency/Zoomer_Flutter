import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoomer/app/resources/app_colors.dart';
import 'package:zoomer/gen/assets.gen.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    this.onFirstButtonPressed,
    this.onSecondButtonPressed,
    this.firstButton,
    this.secondButton,
  });

  final Widget? firstButton;
  final Widget? secondButton;

  final VoidCallback? onFirstButtonPressed;
  final VoidCallback? onSecondButtonPressed;

  @override
  Size get preferredSize => Size.fromHeight(56);

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        color: AppColors.primary,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: _buildLogo(),
            ),
            //Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (firstButton != null) _buildFirstButton(),
                  if (secondButton != null) ...[
                    const SizedBox(width: 20),
                    _buildSecondButton(),
                    const SizedBox(width: 20),
                  ]
                ],
              ),
            )
          ],
        ),
      );

  Widget _buildLogo() => SvgPicture.asset(Assets.images.logo, height: 30, width: 158);

  Widget _buildFirstButton() => firstButton != null
      ? GestureDetector(
          onTap: () {
            onFirstButtonPressed?.call();
          },
          child: firstButton!,
        )
      : const SizedBox();

  Widget _buildSecondButton() => secondButton != null
      ? GestureDetector(
          onTap: () {
            onSecondButtonPressed?.call();
          },
          child: secondButton!,
        )
      : const SizedBox();
}
