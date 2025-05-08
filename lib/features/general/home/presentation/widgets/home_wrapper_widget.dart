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
          children: [
            SizedBox(height: 16),
            HomeLabScheduleSectionWidget(),
            SizedBox(height: 16),
            HomeMenuSectionWidget(),
            Center(
              child: SizedBox(
                height: 32,
                width: 32,
                child: Divider(color: Theme.of(context).colorScheme.primary),
              ),
            ),
            const HomeDutyScheduleSectionWidget(),
          ],
        ),
      ),
    );
  }
}
