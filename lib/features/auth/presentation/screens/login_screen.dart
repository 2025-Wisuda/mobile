// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/features/auth/presentation/widgets/widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LoginWrapperWidget());
  }
}
