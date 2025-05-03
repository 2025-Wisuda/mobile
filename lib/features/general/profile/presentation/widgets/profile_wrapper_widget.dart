import 'package:flutter/material.dart';
import 'package:mobile/features/general/profile/presentation/widgets/profile_button_logout_widget.dart';
import 'package:mobile/features/general/profile/presentation/widgets/widget.dart';

class ProfileWrapperWidget extends StatelessWidget {
  const ProfileWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 24,
          children: [
            ProfileAppBarWidget(),
            Divider(color: Theme.of(context).colorScheme.outline),
            ProfileMenuSectionWidget(),
            const SizedBox(height: 8),
            buttonLogout(context),
          ],
        ),
      ),
    );
  }
}
