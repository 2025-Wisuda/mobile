import 'package:flutter/material.dart';
import 'package:mobile/features/room_booking/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class HistoryRoomBookingAppBarWidget extends StatelessWidget {
  final TabController tabController;
  final List<ApprovalStatusEnum> statusTabs;

  const HistoryRoomBookingAppBarWidget({
    super.key,
    required this.tabController,
    required this.statusTabs,
  });

  @override
  Widget build(BuildContext context) {
    return CustomSliverAppBarWidget(
      showBorder: false,
      title: 'roomBooking'.message('historyTitle'),
      pinned: true,
      expandedHeight: 176,
      toolbarHeight: 56,
      showBackButton: true,
      showBackButtonBorder: false,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: context.surface,
          child: Column(
            children: [
              const SizedBox(height: 56), // Space for app bar
              const SizedBox(height: 16), // Extra spacing
              _buildTabSection(context),
              _buildSearchSection(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabSection(BuildContext context) {
    return Container(
      color: context.surface,
      child: TabBar(
        controller: tabController,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        tabs: statusTabs
            .map((status) => Tab(
                  text: status.getLabel(),
                ))
            .toList(),
      ),
    );
  }

  Widget _buildSearchSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: context.surface,
      child: AnimatedBuilder(
        animation: tabController,
        builder: (context, child) {
          final currentIndex = tabController.index;
          final currentStatus = statusTabs[currentIndex].value;

          return RoomBookingSearchFormWidget(
            currentStatusFilter: currentStatus,
          );
        },
      ),
    );
  }
}
