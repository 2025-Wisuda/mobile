import 'package:mobile/core/enums/screens/screen.dart';

ScreenWidthEnum getScreenWidth(double maxWidth) {
  if (maxWidth > 0 && maxWidth <= 300) {
    return ScreenWidthEnum.extraSmall;
  } else if (maxWidth > 300 && maxWidth <= 480) {
    return ScreenWidthEnum.small;
  } else if (maxWidth > 480 && maxWidth <= 748) {
    return ScreenWidthEnum.medium;
  } else if (maxWidth > 748 && maxWidth <= 1024) {
    return ScreenWidthEnum.large;
  } else if (maxWidth > 1024 && maxWidth <= 1280) {
    return ScreenWidthEnum.extraLarge;
  } else {
    return ScreenWidthEnum.superLarge;
  }
}

ScreenHeightEnum getScreenHeight(double maxHeight) {
  if (maxHeight > 0 && maxHeight <= 300) {
    return ScreenHeightEnum.extraSmall;
  } else if (maxHeight > 300 && maxHeight <= 480) {
    return ScreenHeightEnum.small;
  } else if (maxHeight > 480 && maxHeight <= 768) {
    return ScreenHeightEnum.medium;
  } else if (maxHeight > 768 && maxHeight <= 1024) {
    return ScreenHeightEnum.large;
  } else if (maxHeight > 1024 && maxHeight <= 1280) {
    return ScreenHeightEnum.extraLarge;
  } else {
    return ScreenHeightEnum.superLarge;
  }
}
