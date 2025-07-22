import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/features/room_booking/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class HistoryRoomBookingScreen extends StatefulWidget {
  const HistoryRoomBookingScreen({super.key});

  @override
  State<HistoryRoomBookingScreen> createState() =>
      _HistoryRoomBookingScreenState();
}

class _HistoryRoomBookingScreenState extends State<HistoryRoomBookingScreen>
    with SingleTickerProviderStateMixin {
  late final ScrollController _scrollController;
  late final TabController _tabController;
  late final ListRoomBookingController controller;

  final List<ApprovalStatusEnum> _statusTabs = ApprovalStatusEnum.values;

  @override
  void initState() {
    super.initState();
    controller = Get.find<ListRoomBookingController>();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);

    final arguments = Get.arguments as Map<String, dynamic>?;
    final initialTabIndex = arguments?['initialTabIndex'] as int? ?? 0;
    final shouldRefresh = arguments?['shouldRefresh'] as bool? ?? false;

    _tabController = TabController(
      length: _statusTabs.length,
      vsync: this,
      initialIndex: initialTabIndex.clamp(0, _statusTabs.length - 1),
    );

    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        final currentStatus = _statusTabs[_tabController.index];
        controller.setStatusFilter(currentStatus.value);
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final currentStatus = _statusTabs[_tabController.index];
      controller.setStatusFilter(currentStatus.value);
      if (shouldRefresh) {
        Future.delayed(const Duration(milliseconds: 500), () {
          controller.setStatusFilter(currentStatus.value);
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.8) {
      controller.loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomRefreshWrapperWidget(
        onRefresh: () async {
          await controller.refresh();
        },
        child: NestedScrollView(
          controller: _scrollController,
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              _buildAppBar(context),
              SliverPersistentHeader(
                pinned: true,
                delegate: _TabBarDelegate(
                  tabController: _tabController,
                  statusTabs: _statusTabs,
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SearchBarDelegate(
                  tabController: _tabController,
                  statusTabs: _statusTabs,
                  controller: controller,
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: _statusTabs
                .map((status) =>
                    ListRoomBookingWrapperWidget(controller: controller))
                .toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return CustomSliverAppBarWidget(
      showBorder: false,
      title: 'roomBooking'.message('historyTitle'),
      pinned: true,
      expandedHeight: 0,
      showBackButtonBorder: false,
    );
  }
}

class _TabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabController tabController;
  final List<ApprovalStatusEnum> statusTabs;

  _TabBarDelegate({
    required this.tabController,
    required this.statusTabs,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: context.surface,
      child: TabBar(
        controller: tabController,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        tabs: statusTabs.map((status) => Tab(text: status.getLabel())).toList(),
      ),
    );
  }

  @override
  double get maxExtent => 48.0;

  @override
  double get minExtent => 48.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;
}

class _SearchBarDelegate extends SliverPersistentHeaderDelegate {
  final TabController tabController;
  final List<ApprovalStatusEnum> statusTabs;
  final ListRoomBookingController controller;

  _SearchBarDelegate({
    required this.tabController,
    required this.statusTabs,
    required this.controller,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: context.surface,
      padding: const EdgeInsets.all(16),
      child: AnimatedBuilder(
        animation: tabController,
        builder: (context, child) {
          final currentIndex = tabController.index;
          final currentStatus = statusTabs[currentIndex].value;

          return RoomBookingSearchFormWidget(
            currentStatusFilter: currentStatus,
            controller: controller,
          );
        },
      ),
    );
  }

  @override
  double get maxExtent => 76.0;

  @override
  double get minExtent => 76.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;
}
