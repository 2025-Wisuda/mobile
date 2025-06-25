import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/features/room_booking/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
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
  final RoomBookingWrapperController _controller =
      RoomBookingWrapperController();
  final listController = Get.find<ListRoomBookingController>();

  final List<ApprovalStatusEnum> _statusTabs = [
    ApprovalStatusEnum.pending,
    ApprovalStatusEnum.approved,
    ApprovalStatusEnum.rejected,
    ApprovalStatusEnum.cancelled,
    ApprovalStatusEnum.completed,
    ApprovalStatusEnum.expired,
    ApprovalStatusEnum.inProgress,
  ];

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);

    _tabController = TabController(length: _statusTabs.length, vsync: this);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        final currentStatus = _statusTabs[_tabController.index];
        _fetchWithStatusFilter(currentStatus.value);
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Initialize with first tab status filter
      _fetchWithStatusFilter(_statusTabs[0].value);
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
      listController.loadMore();
    }
  }

  void _fetchWithStatusFilter(String status) {
    final filters = <String, dynamic>{'approvalStatus': status};
    listController.fetchList(filters: filters);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomRefreshWrapperWidget(
        onRefresh: () async {
          final currentStatus = _statusTabs[_tabController.index].value;
          _fetchWithStatusFilter(currentStatus);
        },
        child: Scrollbar(
          controller: _scrollController,
          thickness: 5,
          radius: const Radius.circular(3),
          child: CustomScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            slivers: [
              HistoryRoomBookingAppBarWidget(
                tabController: _tabController,
                statusTabs: _statusTabs,
              ),
              SliverFillRemaining(
                child: TabBarView(
                  controller: _tabController,
                  children: _statusTabs
                      .map((status) =>
                          ListRoomBookingWrapperWidget(c: _controller))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
