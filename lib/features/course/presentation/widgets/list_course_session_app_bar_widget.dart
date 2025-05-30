// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;

// Project imports:
import 'package:mobile/shared/widgets/app_bar/custom_app_bar_widget.dart';

class ListCourseSessionAppBarWidget extends StatelessWidget {
  const ListCourseSessionAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomUserAppBarWidget(
      showBackButton: false,
      showQrButton: false,
      showTrailing: false,
      showSearchButton: false,
      backgroundColor: Colors.transparent,
      titleAppBar: i18n.tr('features.menu.courseSession'),
    );
  }
}
