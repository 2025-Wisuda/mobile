import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:mobile/features/auth/presentation/widgets/widget.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LoginWrapperWidget());
  }
}
