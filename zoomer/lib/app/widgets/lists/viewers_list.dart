import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoomer/app/resources/app_colors.dart';
import 'package:zoomer/app/widgets/circle_page_indicator.dart';

import 'package:zoomer/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:zoomer/domain/entities/viewer_entity.dart';
import 'package:zoomer/gen/assets.gen.dart';

class ViewersList extends StatefulWidget {
  const ViewersList({
    required this.viewers,
    this.pageChanged,
    required this.pageController,
    this.onMuteClicked,
    this.onCameraClicked,
  });

  final List<ViewerEntity> viewers;
  final ValueChanged<int>? pageChanged;
  final PageController pageController;
  final VoidCallback? onMuteClicked;
  final VoidCallback? onCameraClicked;

  @override
  _ViewersListState createState() => _ViewersListState();
}

class _ViewersListState extends State<ViewersList> {
  late int _currentPage;
  late PageController _controller;
  late ValueNotifier<int> _pageNotifier;

  @override
  void initState() {
    super.initState();
    _currentPage = 0;
    _pageNotifier = ValueNotifier(_currentPage);
    _controller = widget.pageController;
    _pageNotifier.addListener(() {
      widget.pageChanged?.call(_pageNotifier.value);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageNotifier.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.primary,
                border: Border.all(color: AppColors.primary),
                boxShadow: [BoxShadow(
                  color: AppColors.black.withOpacity(0.07),
                  offset: Offset(0,8),
                  blurRadius: 30,
                ),],
            ),
            child: SizedBox(
              height: 234,
              width: MediaQuery.of(context).size.width - 44,
              child: _buildViewers(),
            ),
          ),
          const SizedBox(height: 40),
          _buildPageIndicator(),
        ],
      );

  Widget _buildViewers() => ScrollConfiguration(
        behavior: const DisableGrowEffectScrollBehavior(),
        child: PageView.builder(
          itemCount: widget.viewers.length,
          onPageChanged: (int page) {
            _currentPage = page;
            _pageNotifier.value = _currentPage;
          },
          controller: _controller,
          itemBuilder: (context, index) => Container(
            color: AppColors.primary,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 160,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      widget.viewers[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    _buildName(name: widget.viewers[index].name),
                    Spacer(),
                    _buildMuteButton(context),
                    const SizedBox(width: 16),
                    _buildCameraButton(context),
                    const SizedBox(width: 10),
                  ],
                )
              ],
            ),
          ),
        ),
      );

  Widget _buildName({required String name}) => Text(
        name,
        style: TextStyle(color: AppColors.black, fontWeight: FontWeight.w400, fontSize: 16),
      );

  Widget _buildMuteButton(context) => GestureDetector(
      onTap: () {
        widget.onMuteClicked?.call();
      },
      child: SvgPicture.asset(Assets.images.microphoneOn, height: 45, width: 45));

  Widget _buildCameraButton(context) => GestureDetector(
      onTap: () {
        widget.onCameraClicked?.call();
      },
      child: SvgPicture.asset(Assets.images.cameraOn, height: 45, width: 45));

  Widget _buildPageIndicator() => CirclePageIndicator(
        selectedDotColor: AppColors.accent,
        dotColor: AppColors.gray,
        dotSpacing: 10,
        size: 8,
        selectedSize: 8,
        selectedWidth: 20,
        currentPageNotifier: _pageNotifier,
        itemCount: widget.viewers.length,
      );
}
