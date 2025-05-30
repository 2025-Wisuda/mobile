// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/features/course/course.dart';

Widget courseActionButtonWrapperWidget(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [const OrderingCourseButtonsWidget(), FilterCourseWidget()],
  );
}
