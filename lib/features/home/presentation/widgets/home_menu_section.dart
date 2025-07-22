import 'package:flutter/material.dart';

import 'package:mobile/features/menu/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart'
    show Obx;
import 'package:mobile/features/menu/presentation/controllers/controller.dart'
    as menu;

class HomeMenuSection extends StatefulWidget {
  final menu.MainMenuController controller;
  const HomeMenuSection({super.key, required this.controller});

  @override
  State<HomeMenuSection> createState() => _HomeMenuSectionState();
}

class _HomeMenuSectionState extends State<HomeMenuSection> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(
      () => setState(() {}),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  int _getCurrentDotIndex() {
    if (!_scrollController.hasClients) return 0;

    final maxScrollExtent = _scrollController.position.maxScrollExtent;
    final currentOffset = _scrollController.offset;

    if (maxScrollExtent == 0) return 0;

    final progress = currentOffset / maxScrollExtent;
    final totalDots =
        (widget.controller.mainMenuList.length / 3).ceil().clamp(2, 5);

    return (progress * (totalDots - 1)).round().clamp(0, totalDots - 1);
  }

  @override
  Widget build(BuildContext context) {
    return CustomCardItemWidget(
        mainContent: _buildContent(context),
        backgroundColor: context.surface,
        showBorder: true,
        padding: const EdgeInsets.fromLTRB(8, 16, 8, 16));
  }

  Widget _buildContent(BuildContext context) {
    final menus = widget.controller.mainMenuList;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        Text(
          'home'.message('menu'),
          style: context.bodyLargeW(500),
        ),
        _buildMenuGrid(context, menus),
      ],
    );
  }

  Widget _buildMenuGrid(BuildContext context, List<dynamic> menus) {
    return Column(
      spacing: 12,
      children: [
        _buildScrollableMenuList(context, menus),
        if (menus.length > 3) _buildPageIndicators(context, menus),
      ],
    );
  }

  Widget _buildScrollableMenuList(BuildContext context, List<dynamic> menus) {
    return SingleChildScrollView(
      controller: _scrollController,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Obx(() => Row(
            children: [
              ...menus.map((menu) => _buildMenuItem(context, menu)),
            ],
          )),
    );
  }

  Widget _buildMenuItem(BuildContext context, dynamic menu) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: MainMenuItemWidget(
        backgroundColor: context.primary,
        iconMenu: customImageIconWidget(
          width: 32,
          height: 32,
          imagePath: menu.iconMenu,
          color: context.onPrimary,
        ),
        nameMenu: menu.nameMenu,
        routeName: menu.routeName,
      ),
    );
  }

  Widget _buildPageIndicators(BuildContext context, List<dynamic> menus) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        (menus.length / 3).ceil().clamp(2, 5),
        (index) => _buildIndicatorDot(context, index),
      ),
    );
  }

  Widget _buildIndicatorDot(BuildContext context, int index) {
    final isActive = _getCurrentDotIndex() == index;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? context.primary : context.primaryContainer,
        shape: BoxShape.circle,
      ),
    );
  }
}
