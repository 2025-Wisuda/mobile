import 'package:flutter/material.dart';

import 'package:mobile/core/constants/color_constant.dart';

class TextStyleConstant {
  static const TextStyle _kBaseInter = TextStyle(
    fontFamily: 'Inter',
    color: ColorConstant.kNeutral900,
  );
  static final TextStyle _kInterLight = _kBaseInter.copyWith(
    fontWeight: FontWeight.w300,
  );
  static final TextStyle _kInterRegular = _kBaseInter.copyWith(
    fontWeight: FontWeight.w400,
  );
  static final TextStyle _kInterMedium = _kBaseInter.copyWith(
    fontWeight: FontWeight.w500,
  );
  static final TextStyle _kInterSemiBold = _kBaseInter.copyWith(
    fontWeight: FontWeight.w600,
  );
  static final TextStyle _kInterBold = _kBaseInter.copyWith(
    fontWeight: FontWeight.w700,
  );
  static final TextStyle _kInterExtraBold = _kBaseInter.copyWith(
    fontWeight: FontWeight.w800,
  );
  static final TextStyle _kInterBlack = _kBaseInter.copyWith(
    fontWeight: FontWeight.w900,
  );

  static final TextStyle labelLarge = _kInterMedium.copyWith(
    fontSize: 14,
    letterSpacing: 0.1,
    height: 1.43,
  );

  static final TextStyle labelMedium = _kInterMedium.copyWith(
    fontSize: 12,
    letterSpacing: 0.5,
    height: 1.33,
  );

  static final TextStyle labelSmall = _kInterRegular.copyWith(
    fontSize: 11,
    letterSpacing: 0.5,
    height: 1.45,
  );

  static final TextStyle titleLarge = _kInterMedium.copyWith(
    fontSize: 22,
    letterSpacing: 0,
    height: 1.27,
  );

  static final TextStyle titleMedium = _kInterMedium.copyWith(
    fontSize: 16,
    letterSpacing: 0.15,
    height: 1.5,
  );

  static final TextStyle titleSmall = _kInterMedium.copyWith(
    fontSize: 14,
    letterSpacing: 0.1,
    height: 1.43,
  );

  static final TextStyle kInterHeading1Light = _kInterLight.copyWith(
    fontSize: 57,
  );
  static final TextStyle kInterHeading2Light = _kInterLight.copyWith(
    fontSize: 45,
  );
  static final TextStyle kInterHeading3Light = _kInterLight.copyWith(
    fontSize: 36,
  );
  static final TextStyle kInterHeading4Light = _kInterLight.copyWith(
    fontSize: 32,
  );
  static final TextStyle kInterHeading5Light = _kInterLight.copyWith(
    fontSize: 28,
  );
  static final TextStyle kInterHeading6Light = _kInterLight.copyWith(
    fontSize: 24,
  );
  static final TextStyle kInterBodyLargeLight = _kInterLight.copyWith(
    fontSize: 16,
  );
  static final TextStyle kInterBodyMediumLight = _kInterLight.copyWith(
    fontSize: 14,
  );
  static final TextStyle kInterBodySmallLight = _kInterLight.copyWith(
    fontSize: 12,
  );

  static final TextStyle kInterHeading1Regular = _kInterRegular.copyWith(
    fontSize: 57,
  );
  static final TextStyle kInterHeading2Regular = _kInterRegular.copyWith(
    fontSize: 45,
  );
  static final TextStyle kInterHeading3Regular = _kInterRegular.copyWith(
    fontSize: 36,
  );
  static final TextStyle kInterHeading4Regular = _kInterRegular.copyWith(
    fontSize: 32,
  );
  static final TextStyle kInterHeading5Regular = _kInterRegular.copyWith(
    fontSize: 28,
  );
  static final TextStyle kInterHeading6Regular = _kInterRegular.copyWith(
    fontSize: 24,
  );
  static final TextStyle kInterBodyLargeRegular = _kInterRegular.copyWith(
    fontSize: 16,
  );
  static final TextStyle kInterBodyMediumRegular = _kInterRegular.copyWith(
    fontSize: 14,
  );
  static final TextStyle kInterBodySmallRegular = _kInterRegular.copyWith(
    fontSize: 12,
  );

  static final TextStyle kInterHeading1Medium = _kInterMedium.copyWith(
    fontSize: 57,
  );
  static final TextStyle kInterHeading2Medium = _kInterMedium.copyWith(
    fontSize: 45,
  );
  static final TextStyle kInterHeading3Medium = _kInterMedium.copyWith(
    fontSize: 36,
  );
  static final TextStyle kInterHeading4Medium = _kInterMedium.copyWith(
    fontSize: 32,
  );
  static final TextStyle kInterHeading5Medium = _kInterMedium.copyWith(
    fontSize: 28,
  );
  static final TextStyle kInterHeading6Medium = _kInterMedium.copyWith(
    fontSize: 24,
  );
  static final TextStyle kInterBodyLargeMedium = _kInterMedium.copyWith(
    fontSize: 16,
  );
  static final TextStyle kInterBodyMediumMedium = _kInterMedium.copyWith(
    fontSize: 14,
  );
  static final TextStyle kInterBodySmallMedium = _kInterMedium.copyWith(
    fontSize: 12,
  );

  static final TextStyle kInterHeading1SemiBold = _kInterSemiBold.copyWith(
    fontSize: 57,
  );
  static final TextStyle kInterHeading2SemiBold = _kInterSemiBold.copyWith(
    fontSize: 45,
  );
  static final TextStyle kInterHeading3SemiBold = _kInterSemiBold.copyWith(
    fontSize: 36,
  );
  static final TextStyle kInterHeading4SemiBold = _kInterSemiBold.copyWith(
    fontSize: 32,
  );
  static final TextStyle kInterHeading5SemiBold = _kInterSemiBold.copyWith(
    fontSize: 28,
  );
  static final TextStyle kInterHeading6SemiBold = _kInterSemiBold.copyWith(
    fontSize: 24,
  );
  static final TextStyle kInterBodyLargeSemiBold = _kInterSemiBold.copyWith(
    fontSize: 16,
  );
  static final TextStyle kInterBodyMediumSemiBold = _kInterSemiBold.copyWith(
    fontSize: 14,
  );
  static final TextStyle kInterBodySmallSemiBold = _kInterSemiBold.copyWith(
    fontSize: 12,
  );

  static final TextStyle kInterHeading1Bold = _kInterBold.copyWith(
    fontSize: 57,
  );
  static final TextStyle kInterHeading2Bold = _kInterBold.copyWith(
    fontSize: 45,
  );
  static final TextStyle kInterHeading3Bold = _kInterBold.copyWith(
    fontSize: 36,
  );
  static final TextStyle kInterHeading4Bold = _kInterBold.copyWith(
    fontSize: 32,
  );
  static final TextStyle kInterHeading5Bold = _kInterBold.copyWith(
    fontSize: 28,
  );
  static final TextStyle kInterHeading6Bold = _kInterBold.copyWith(
    fontSize: 24,
  );
  static final TextStyle kInterBodyLargeBold = _kInterBold.copyWith(
    fontSize: 16,
  );
  static final TextStyle kInterBodyMediumBold = _kInterBold.copyWith(
    fontSize: 14,
  );
  static final TextStyle kInterBodySmallBold = _kInterBold.copyWith(
    fontSize: 12,
  );

  static final TextStyle kInterHeading1ExtraBold = _kInterExtraBold.copyWith(
    fontSize: 57,
  );
  static final TextStyle kInterHeading2ExtraBold = _kInterExtraBold.copyWith(
    fontSize: 45,
  );
  static final TextStyle kInterHeading3ExtraBold = _kInterExtraBold.copyWith(
    fontSize: 36,
  );
  static final TextStyle kInterHeading4ExtraBold = _kInterExtraBold.copyWith(
    fontSize: 32,
  );
  static final TextStyle kInterHeading5ExtraBold = _kInterExtraBold.copyWith(
    fontSize: 28,
  );
  static final TextStyle kInterHeading6ExtraBold = _kInterExtraBold.copyWith(
    fontSize: 24,
  );
  static final TextStyle kInterBodyLargeExtraBold = _kInterExtraBold.copyWith(
    fontSize: 16,
  );
  static final TextStyle kInterBodyMediumExtraBold = _kInterExtraBold.copyWith(
    fontSize: 14,
  );
  static final TextStyle kInterBodySmallExtraBold = _kInterExtraBold.copyWith(
    fontSize: 12,
  );

  static final TextStyle kInterHeading1Black = _kInterBlack.copyWith(
    fontSize: 57,
  );
  static final TextStyle kInterHeading2Black = _kInterBlack.copyWith(
    fontSize: 45,
  );
  static final TextStyle kInterHeading3Black = _kInterBlack.copyWith(
    fontSize: 36,
  );
  static final TextStyle kInterHeading4Black = _kInterBlack.copyWith(
    fontSize: 32,
  );
  static final TextStyle kInterHeading5Black = _kInterBlack.copyWith(
    fontSize: 28,
  );
  static final TextStyle kInterHeading6Black = _kInterBlack.copyWith(
    fontSize: 24,
  );
  static final TextStyle kInterBodyLargeBlack = _kInterBlack.copyWith(
    fontSize: 16,
  );
  static final TextStyle kInterBodyMediumBlack = _kInterBlack.copyWith(
    fontSize: 14,
  );
  static final TextStyle kInterBodySmallBlack = _kInterBlack.copyWith(
    fontSize: 12,
  );
}
