import 'package:flutter/material.dart';
import 'package:mobile/features/splash/presentation/widgets/widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashWrapperWidget());
  }
}
