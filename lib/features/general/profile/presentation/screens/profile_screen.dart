// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/features/general/profile/presentation/widgets/widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const ProfileAppBarWidget(),
          SliverToBoxAdapter(child: ProfileWrapperWidget()),
        ],
      ),
    );
  }
}
