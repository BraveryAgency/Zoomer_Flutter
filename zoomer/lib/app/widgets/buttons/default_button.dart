import 'package:flutter/material.dart';
import 'package:zoomer/app/resources/app_colors.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton({
    this.text,
    this.onPressed,
    this.enabled = true,
    this.color,
    this.textColor = AppColors.onAccent,
    this.borderColor,
    this.prefixImage,
  });

  final String? text;
  final VoidCallback? onPressed;
  final bool enabled;
  final Color? color;
  final Color textColor;
  final Color? borderColor;
  final Widget? prefixImage;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          if (enabled) {
            onPressed?.call();
          }
        },
        child: SizedBox(
          height: 50,
          child: Container(

            alignment: Alignment.center,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(8),
              border: borderColor != null ? Border.all(color: borderColor!) : null,
              color: AppColors.accent
            ),
            padding: const EdgeInsets.only(top:17,bottom: 14,left: 17,right: 17),
            width: double.maxFinite,
            child: text != null
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (prefixImage != null)
                        Padding(
                          padding: const EdgeInsets.only(right: 9),
                          child: prefixImage,
                        ),
                      Text(
                        text!,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 19.2/16,
                          color: textColor ,
                        ),

                      ),
                    ],
                  )
                : const SizedBox(),
          ),
        ),
      );
}
