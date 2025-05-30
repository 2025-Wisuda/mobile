// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/features/general/profile/presentation/widgets/widget.dart';
import 'package:mobile/shared/helpers/helper.dart';

class ProfileWrapperWidget extends StatelessWidget {
  const ProfileWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 24,
        children: [ProfileMenuSectionWidget(), buttonLogout(context).pt(8)],
      ).p(24),
    );
  }
}
