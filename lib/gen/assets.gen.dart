/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/apple.png
  AssetGenImage get apple => const AssetGenImage('assets/icons/apple.png');

  /// File path: assets/icons/arrw.png
  AssetGenImage get arrw => const AssetGenImage('assets/icons/arrw.png');

  /// File path: assets/icons/foodvillage.svg
  String get foodvillage => 'assets/icons/foodvillage.svg';

  /// File path: assets/icons/sd.svg
  String get sd => 'assets/icons/sd.svg';

  /// List of all assets
  List<dynamic> get values => [apple, arrw, foodvillage, sd];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Alt Arrow Left.png
  AssetGenImage get altArrowLeft =>
      const AssetGenImage('assets/images/Alt Arrow Left.png');

  /// File path: assets/images/Food for Everyone.png
  AssetGenImage get foodForEveryone =>
      const AssetGenImage('assets/images/Food for Everyone.png');

  /// File path: assets/images/app.svg
  String get app => 'assets/images/app.svg';

  /// File path: assets/images/bacroundimage (2).png
  AssetGenImage get bacroundimage2 =>
      const AssetGenImage('assets/images/bacroundimage (2).png');

  /// File path: assets/images/bagh.jpg
  AssetGenImage get bagh => const AssetGenImage('assets/images/bagh.jpg');

  /// File path: assets/images/cafe (2).png
  AssetGenImage get cafe2 => const AssetGenImage('assets/images/cafe (2).png');

  /// File path: assets/images/clg.png
  AssetGenImage get clg => const AssetGenImage('assets/images/clg.png');

  /// File path: assets/images/cupsimage.jpg
  AssetGenImage get cupsimage =>
      const AssetGenImage('assets/images/cupsimage.jpg');

  /// File path: assets/images/dim.png
  AssetGenImage get dim => const AssetGenImage('assets/images/dim.png');

  /// File path: assets/images/food.png
  AssetGenImage get food => const AssetGenImage('assets/images/food.png');

  /// File path: assets/images/fulimage.jpg
  AssetGenImage get fulimage =>
      const AssetGenImage('assets/images/fulimage.jpg');

  /// File path: assets/images/full.png
  AssetGenImage get full => const AssetGenImage('assets/images/full.png');

  /// File path: assets/images/fullimage.png
  AssetGenImage get fullimage =>
      const AssetGenImage('assets/images/fullimage.png');

  /// File path: assets/images/halum.jpg
  AssetGenImage get halum => const AssetGenImage('assets/images/halum.jpg');

  /// File path: assets/images/image.jpg
  AssetGenImage get image => const AssetGenImage('assets/images/image.jpg');

  /// File path: assets/images/khubu.png
  AssetGenImage get khubu => const AssetGenImage('assets/images/khubu.png');

  /// File path: assets/images/men.png
  AssetGenImage get men => const AssetGenImage('assets/images/men.png');

  /// File path: assets/images/misti.jpg
  AssetGenImage get misti => const AssetGenImage('assets/images/misti.jpg');

  /// File path: assets/images/red.svg
  String get red => 'assets/images/red.svg';

  /// File path: assets/images/splascreen.png
  AssetGenImage get splascreen =>
      const AssetGenImage('assets/images/splascreen.png');

  /// File path: assets/images/stp.png
  AssetGenImage get stp => const AssetGenImage('assets/images/stp.png');

  /// File path: assets/images/tree.avif
  String get tree => 'assets/images/tree.avif';

  /// File path: assets/images/village.jpg
  AssetGenImage get village => const AssetGenImage('assets/images/village.jpg');

  /// List of all assets
  List<dynamic> get values => [
    altArrowLeft,
    foodForEveryone,
    app,
    bacroundimage2,
    bagh,
    cafe2,
    clg,
    cupsimage,
    dim,
    food,
    fulimage,
    full,
    fullimage,
    halum,
    image,
    khubu,
    men,
    misti,
    red,
    splascreen,
    stp,
    tree,
    village,
  ];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/Wede_Animation.json
  String get wedeAnimation => 'assets/lottie/Wede_Animation.json';

  /// File path: assets/lottie/add_to_cart.json
  String get addToCart => 'assets/lottie/add_to_cart.json';

  /// File path: assets/lottie/hamburger.json
  String get hamburger => 'assets/lottie/hamburger.json';

  /// File path: assets/lottie/noDataFound.json
  String get noDataFound => 'assets/lottie/noDataFound.json';

  /// File path: assets/lottie/remove_from_cart.json
  String get removeFromCart => 'assets/lottie/remove_from_cart.json';

  /// File path: assets/lottie/success.json
  String get success => 'assets/lottie/success.json';

  /// List of all assets
  List<String> get values => [
    wedeAnimation,
    addToCart,
    hamburger,
    noDataFound,
    removeFromCart,
    success,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
