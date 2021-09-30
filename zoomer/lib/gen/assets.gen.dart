/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';

class $AssetsI18nGen {
  const $AssetsI18nGen();

  String get en => 'assets/i18n/en.json';
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  String get camera => 'assets/images/camera.svg';
  String get checked => 'assets/images/checked.svg';
  String get close => 'assets/images/close.svg';
  String get details => 'assets/images/details.svg';
  String get exit => 'assets/images/exit.svg';
  String get leftArrow => 'assets/images/leftArrow.svg';
  String get location => 'assets/images/location.svg';
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');
  String get mute => 'assets/images/mute.svg';
  AssetGenImage get noBroadcast =>
      const AssetGenImage('assets/images/noBroadcast.png');
  String get person => 'assets/images/person.svg';
  String get rightArrow => 'assets/images/rightArrow.svg';
  String get switchCamera => 'assets/images/switchCamera.svg';
  String get unchecked => 'assets/images/unchecked.svg';
}

class Assets {
  Assets._();

  static const $AssetsI18nGen i18n = $AssetsI18nGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
