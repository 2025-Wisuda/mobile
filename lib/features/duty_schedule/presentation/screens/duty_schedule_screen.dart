import 'package:flutter/material.dart';

import 'package:mobile/features/duty_schedule/presentation/widgets/widget.dart';

class DutyScheduleScreen extends StatelessWidget {
  const DutyScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: ListDutyScheduleAppBarWidget(),
      ),
      body: ListDutyScheduleWrapperWidget(),
    );
  }
}
