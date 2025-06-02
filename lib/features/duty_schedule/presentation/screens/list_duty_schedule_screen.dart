// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/features/duty_schedule/presentation/widgets/list_duty_schedule_app_bar_widget.dart';
import 'package:mobile/features/duty_schedule/presentation/widgets/list_duty_schedule_wrapper_widget.dart';

class ListDutyScheduleScreen extends StatelessWidget {
  const ListDutyScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(21),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListDutyScheduleAppBarWidget(),
          ),
        ),
      ),
      body: ListDutyScheduleWrapperWidget(),
    );
  }
}
