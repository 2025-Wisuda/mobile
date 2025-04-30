import 'package:flutter/material.dart';
import 'package:mobile/features/general/home/presentation/widgets/widget.dart';

class HomeWrapperWidget extends StatelessWidget {
  const HomeWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 24,
          children: [
            HomeScheduleSectionWidget(),
            const HomeDutySectionWidget(),
            HomeMenuSectionWidget(),
          ],
        ),
      ),
    );
  }
}
