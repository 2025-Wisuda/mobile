// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/features/lab_schedule/presentation/widgets/widget.dart';

class ListLabScheduleScreen extends StatelessWidget {
  const ListLabScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(25),
          child: ListLabScheduleAppBarWidget(),
        ),
      ),
      body: ListLabScheduleWrapperWidget(),
    );
  }
}
