// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/features/general/home/presentation/widgets/home_app_bar_widget.dart';
import 'package:mobile/features/general/home/presentation/widgets/home_wrapper_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const HomeAppBarWidget(),
          SliverToBoxAdapter(child: HomeWrapperWidget()),
        ],
      ),
    );
  }
}
