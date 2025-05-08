import 'package:flutter/material.dart';
import 'package:mobile/features/schedule/presentation/widgets/widget.dart';

class DetailLabScheduleScreen extends StatelessWidget {
  final String labScheduleId;
  const DetailLabScheduleScreen({super.key, required this.labScheduleId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(20),
          child: DetailLabScheduleAppBarWidget(),
        ),
      ),
      body: DetailLabScheduleWrapperWidget(labScheduleId: labScheduleId),
    );
  }
}
