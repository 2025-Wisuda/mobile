import 'package:flutter/material.dart';
import 'package:mobile/features/schedule/presentation/widgets/widget.dart';

class ListLabScheduleScreen extends StatelessWidget {
  const ListLabScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(24),
          child: ListLabScheduleAppBarWidget(),
        ),
      ),
      body: ListLabScheduleWrapperWidget(),
    );
  }
}
