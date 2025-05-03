import 'package:flutter/material.dart';
import 'package:mobile/features/general/profile/presentation/widgets/profile_app_bar_widget.dart';
import 'package:mobile/features/general/profile/presentation/widgets/profile_button_logout_widget.dart';
import 'package:mobile/features/general/profile/presentation/widgets/profile_wrapper_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.shadow,
        flexibleSpace: SizedBox.shrink(),
      ),
      body: ProfileWrapperWidget(),
    );
  }
}
