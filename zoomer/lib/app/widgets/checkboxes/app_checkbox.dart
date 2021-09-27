import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoomer/app/resources/app_colors.dart';
import 'package:zoomer/gen/assets.gen.dart';

class AppCheckbox extends StatelessWidget {
  const AppCheckbox({
    this.checked = false,
    this.title,
    this.onPressed,
  });

  final bool checked;
  final String? title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          onPressed?.call();
        },
        child: Row(
          children: [
            const SizedBox(width: 5),
            _buildCheckbox(),
            _buildTitle(),
          ],
        ),
      );

  Widget _buildCheckbox() => checked
      ? SvgPicture.asset(Assets.images.checked, width: 24, height: 24)

      : Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.inputBorder, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
          ),
        );
  Widget _buildTitle() => title != null
      ? Padding(
          padding: const EdgeInsets.only(left: 11),
          child: Text(
            title!,
            style: const TextStyle(
              color: AppColors.inputText,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      : const SizedBox();
}
