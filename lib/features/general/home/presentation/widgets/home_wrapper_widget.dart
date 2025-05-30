// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/features/general/home/presentation/widgets/widget.dart';
import 'package:mobile/shared/helpers/helper.dart';

class HomeWrapperWidget extends StatelessWidget {
  const HomeWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          HomeLabScheduleSectionWidget(),
          HomeMenuSectionWidget(),
          const HomeDutyScheduleSectionWidget(),
        ],
      ).px(16),
    );
  }
}
