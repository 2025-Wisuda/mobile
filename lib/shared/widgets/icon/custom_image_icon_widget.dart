// Flutter imports:
import 'package:flutter/widgets.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

/// A utility widget to display custom icons from assets.
///
/// This widget supports both SVG and non-SVG image formats. It automatically
/// applies padding for non-SVG images and allows customization of size and color.
///
/// ### Features:
/// - Supports `.svg` and other image formats.
/// - Allows customization of width, height, and color.
/// - Automatically applies padding for non-SVG images.
///
/// ### Example Usage:
/// ```dart
/// // Display an SVG icon with custom size and color
/// customImageIconWidget(
///   imagePath: 'assets/icons/example.svg',
///   width: 32,
///   height: 32,
///   color: Colors.blue,
/// );
///
/// // Display a PNG icon with default size
/// customImageIconWidget(
///   imagePath: 'assets/icons/example.png',
/// );
/// ```
Widget customImageIconWidget({
  required String imagePath,
  double? width,
  double? height,
  Color? color,
}) {
  double defaultSize = 24;
  bool isSvg = imagePath.contains('.svg');

  return Padding(
    padding: isSvg ? EdgeInsets.zero : const EdgeInsets.all(12),
    child:
        isSvg
            ? SvgPicture.asset(
              imagePath,
              width: width ?? defaultSize,
              height: height ?? defaultSize,
              colorFilter:
                  color != null
                      ? ColorFilter.mode(color, BlendMode.srcIn)
                      : null,
            )
            : Image.asset(
              imagePath,
              width: width ?? defaultSize,
              height: height ?? defaultSize,
              color: color,
            ),
  );
}
