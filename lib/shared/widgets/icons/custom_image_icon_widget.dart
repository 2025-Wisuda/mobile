import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget customImageIconWidget({
  required String imagePath,
  double? width,
  double? height,
}) {
  double defaultSize = 24;
  bool isSvg = imagePath.contains('.svg');

  return Padding(
    padding: isSvg ? EdgeInsets.zero : const EdgeInsets.all(12),
    child: isSvg
        ? SvgPicture.asset(
            imagePath,
            width: width ?? defaultSize,
            height: height ?? defaultSize,
          )
        : Image.asset(
            imagePath,
            width: width ?? defaultSize,
            height: height ?? defaultSize,
          ),
  );
}
