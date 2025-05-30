// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/features/lab_schedule/presentation/widgets/widget.dart';

class SearchLabScheduleScreen extends StatelessWidget {
  const SearchLabScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(21),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SearchLabScheduleAppBarWidget(),
          ),
        ),
      ),
      body: SearchLabScheduleWrapperWidget(),
    );
  }
}
