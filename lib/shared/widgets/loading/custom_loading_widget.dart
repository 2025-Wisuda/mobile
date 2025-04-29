import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
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
