// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;

// Project imports:
import 'package:mobile/features/lab_schedule/presentation/presentation.dart';
import 'package:mobile/shared/widgets/app_bar/custom_app_bar_widget.dart';

class ListLabScheduleAppBarWidget extends StatelessWidget {
  const ListLabScheduleAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomUserAppBarWidget(
      showBackButton: false,
      showQrButton: false,
      showTrailing: false,
      showSearchButton: false,
      backgroundColor: Colors.transparent,
      actionButton: const ButtonSearchLabScheduleNavigationWidget(),
      titleAppBar: i18n.tr('features.menu.labSchedule'),
    );
  }
}
