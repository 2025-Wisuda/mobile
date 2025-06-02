import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:mobile/features/auth/presentation/widgets/widget.dart';

@RoutePage()
class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});
  // TODO: TESTING CHANGE PASSWORD SCREEN
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: ChangePasswordAppBarWidget(),
      ),
      body: ChangePasswordWrapperWidget(),
    );
  }
}
