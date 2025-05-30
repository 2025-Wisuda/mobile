// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/features/auth/presentation/widgets/widget.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';

class LoginWrapperWidget extends StatelessWidget {
  const LoginWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
          LoginAppBarWidget(),
          LoginFormUsernameWidget(),
          LoginFormPasswordWidget().pt(8),
          LoginButtonWidget().pt(36),
        ],
      ).p(24),
    );
  }
}
