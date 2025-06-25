import 'package:flutter/material.dart';

import 'package:mobile/features/auth/presentation/widgets/widget.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: ChangePasswordAppBarWidget(),
      ),
      body: ChangePasswordWrapperWidget(),
    );
  }
}
