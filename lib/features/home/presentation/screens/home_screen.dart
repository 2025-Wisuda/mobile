import 'package:flutter/material.dart';

// import 'package:auto_route/auto_route.dart';

// @RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Text('LETS REFACTOR'),
          ), // const HomeAppBarWidget(),
          // SliverToBoxAdapter(child: HomeWrapperWidget()),
        ],
      ),
    );
  }
}
