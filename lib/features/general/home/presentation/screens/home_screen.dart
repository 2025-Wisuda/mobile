import 'package:flutter/material.dart';
import 'package:mobile/features/general/home/presentation/widgets/home_app_bar_widget.dart';
import 'package:mobile/features/general/home/presentation/widgets/home_wrapper_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(16),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: HomeAppBarWidget(),
          ),
        ),
      ),
      body: HomeWrapperWidget(),
    );
  }
}
