import 'package:flutter/material.dart';
import 'package:mobile/features/general/home/presentation/widgets/home_app_bar_widget.dart';
import 'package:mobile/features/general/home/presentation/widgets/home_wrapper_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.shadow,
        flexibleSpace: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: HomeAppBarWidget(),
        ),
      ),
      body: HomeWrapperWidget(),
    );
  }
}
