import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:mobile/features/menu/presentation/widgets/menu_bottom_nav_bar_widget.dart';

@RoutePage()
class MainWrapperScreen extends StatelessWidget {
  const MainWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MenuBottomNavBarWidget();
  }
}
