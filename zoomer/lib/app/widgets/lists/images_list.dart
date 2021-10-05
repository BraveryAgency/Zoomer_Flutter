import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:zoomer/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:zoomer/domain/entities/briadcast_image_entity.dart';
import 'package:zoomer/gen/assets.gen.dart';

class ImagesList extends StatefulWidget {
  const ImagesList({
    required this.images,
    this.pageChanged,
    required this.pageController,
  });

  final List<BroadcastImageEntity> images;
  final ValueChanged<int>? pageChanged;
  final PageController pageController;

  @override
  _ImagesListState createState() => _ImagesListState();
}

class _ImagesListState extends State<ImagesList> {
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
  Widget build(BuildContext context) =>
      Stack(
        children: [
          _buildImages(),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: _buildLeftButton(),
              padding: const EdgeInsets.all(15),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              child: _buildRightButton(),
              padding: const EdgeInsets.all(15),
            ),
          ),
        ],
      );

  Widget _buildImages() =>
      ScrollConfiguration(
        behavior: const DisableGrowEffectScrollBehavior(),
        child: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: widget.images.length,
          onPageChanged: (int page) {
            _currentPage = page;
            _pageNotifier.value = _currentPage;
          },
          controller: _controller,
          itemBuilder: (context, index) =>
              Stack(
                fit: StackFit.expand,
                children: [
                  CachedNetworkImage(
                    imageUrl: widget.images[index].url,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
        ),
      );

  Widget _buildRightButton() =>
      GestureDetector(
        onTap: () {
          _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeOut);
        },
        child: SvgPicture.asset(Assets.images.rightArrow, height: 30, width: 30),
      );

  Widget _buildLeftButton() =>
      GestureDetector(
        onTap: () {
          _controller.previousPage(duration: Duration(milliseconds: 300), curve: Curves.easeOut);
        },
        child: SvgPicture.asset(Assets.images.leftArrow, height: 30, width: 30),
      );
}
