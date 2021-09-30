import 'package:flutter/material.dart';
import 'package:zoomer/app/resources/app_colors.dart';
import 'package:zoomer/gen/assets.gen.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    this.onFirstButtonPressed,
    this.onSecondButtonPressed,
    this.firstIcon,
    this.secondIcon,
    this.firstIconPadding = const EdgeInsets.symmetric(vertical:25),
    this.secondIconPadding = const EdgeInsets.symmetric(vertical:25),
  });

  final Widget? firstIcon;
  final Widget? secondIcon;

  final VoidCallback? onFirstButtonPressed;
  final VoidCallback? onSecondButtonPressed;

  final EdgeInsetsGeometry firstIconPadding;
  final EdgeInsetsGeometry secondIconPadding;

  @override
  Size get preferredSize => Size.fromHeight(70);

  @override
  Widget build(BuildContext context) => Container(
    color: AppColors.primary,
    child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: _buildLogo()
          ),
          //Spacer(),
          Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _buildFirstButton(),
                  const SizedBox(width: 20),
                  _buildSecondButton(),
                  if (secondIcon != null) const SizedBox(width: 20),
                ],
              ))
        ]),
  );

  Widget _buildLogo() => Padding(
        padding: const EdgeInsets.only(left: 20, top: 19,bottom: 19 ),
        child: Assets.images.logo.image(height: 37, width: 158),
      );

  Widget _buildFirstButton() => firstIcon != null
      ? GestureDetector(
          onTap: () {
            onFirstButtonPressed?.call();
          },
          child: Padding(
            padding: firstIconPadding,
            child: firstIcon!,
          ),
        )
      : const SizedBox();

  Widget _buildSecondButton() => secondIcon != null
      ? GestureDetector(
          onTap: () {
            onSecondButtonPressed?.call();
          },
          child: Padding(
            padding: secondIconPadding,
            child: secondIcon!,
          ),
        )
      : const SizedBox();
}
