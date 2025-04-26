import 'package:flutter/material.dart';
import 'package:mobile/features/auth/presentation/widgets/widget.dart';

class LoginWrapperWidget extends StatelessWidget {
  const LoginWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 8,
          children: [LoginAppBarWidget(), LoginFormUsernameWidget(),
            const SizedBox(height: 8),
            LoginFormPasswordWidget(),
            SizedBox(height: 48),
            LoginButtonWidget(),
            ],
            
        ),
      ),
    );
  }
}
