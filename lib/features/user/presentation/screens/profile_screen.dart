import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:mobile/features/user/presentation/widgets/profile/profile_wrapper_widget.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileWrapperWidget();
  }
}
