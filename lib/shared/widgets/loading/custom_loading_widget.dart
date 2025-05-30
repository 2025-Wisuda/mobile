// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:loading_indicator/loading_indicator.dart';

// Project imports:
import 'package:mobile/core/constants/color_constant.dart';

Widget customLoadingWidget = const SizedBox(
  height: 40,
  width: 40,
  child: LoadingIndicator(
    backgroundColor: Colors.transparent,
    indicatorType: Indicator.ballPulse,
    colors: [
      ColorConstant.kSuccess500,
      ColorConstant.kSecondary500,
      ColorConstant.kError500,
    ],
  ),
);
