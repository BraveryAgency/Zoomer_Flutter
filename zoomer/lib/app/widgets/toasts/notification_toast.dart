import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoomer/app/resources/app_colors.dart';
import 'package:zoomer/gen/assets.gen.dart';

class NotificationToast extends StatelessWidget {
  const NotificationToast({
    required this.title,
    required this.message,
    required this.icon,
    required this.date,
  });

  final String? title;
  final String? message;
  final String? icon;
  final String? date;

  @override
  Widget build(BuildContext context) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        // boxShadow: [
        //   BoxShadow(
        //     color: AppColors.shadow,
        //     spreadRadius: 100,
        //     blurRadius: 100,
        //     offset: Offset(0, 3),
        //   )
        // ],
        color: AppColors.inputText,
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 31, right: 16),
            child: Row(
              children: [
                _buildTitle(),
                Spacer(),
                _buildCloseButton(),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left:31,right:16,bottom: 22),
            child: Row(
              children: [
                _buildNotificationIcon(),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildNotificationText(),
                    const SizedBox(height:4),
                    _buildNotificationTime()
                  ],
                )
              ],
            ),
          )
        ],
      ));

  Widget _buildTitle() => Text(
        title ?? '',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppColors.primary,
          height: 22 / 18,
        ),
      );

  Widget _buildNotificationText() => Text(
    message ?? '',
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.primary,
      height: 19 / 16,
    ),
  );

  Widget _buildNotificationTime() => Text(
    date ?? '',
    style: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: AppColors.primary,
      height: 18 / 15,
    ),
  );


  Widget _buildCloseButton() => SvgPicture.asset(Assets.images.close, height: 24, width: 24);

  Widget _buildNotificationIcon() => (icon!=null) ?ClipOval(
        child:  Image.network(
          icon!,
          height: 28,
          width: 28,
          fit: BoxFit.cover,
        )
      )
      :
    SizedBox();

}
