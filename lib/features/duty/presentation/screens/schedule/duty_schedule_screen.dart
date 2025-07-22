import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/duty/presentation/_helpers/duty_schedule_helpers.dart';
import 'package:mobile/features/duty/presentation/controllers/controller.dart';
import 'package:mobile/features/duty/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DutyScheduleScreen extends StatefulWidget {
  const DutyScheduleScreen({super.key});

  @override
  State<DutyScheduleScreen> createState() => _DutyScheduleScreenState();
}

class _DutyScheduleScreenState extends State<DutyScheduleScreen> {
  late final ListDutyScheduleController controller;
  late final List<String> _days;
  late final Map<String, String> _dayKeyMap;
  int _currentIndex = 0;
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    controller = Get.find<ListDutyScheduleController>();
    _days = DutyScheduleHelpers.getOrderedDays();
    _dayKeyMap = DutyScheduleHelpers.createDayKeyMap();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);

    _fetchByTabIndex(0);
  }

  void _fetchByTabIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
    DutyScheduleHelpers.fetchByTabIndex(
      index,
      _days,
      _dayKeyMap,
      (apiParam) => controller.fetchList(filters: {'days': apiParam as int}),
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.8) {
      controller.loadMore();
    }
  }

  Widget _buildLoadMoreIndicator() {
    return GetBuilder<ListDutyScheduleController>(
      builder: (controller) {
        return Obx(() {
          if (controller.canLoadMore) {
            if (controller.isLoadingMore.value) {
              return const Padding(
                padding: EdgeInsets.all(16),
                child: Center(child: CircularProgressIndicator()),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: TextButton(
                    onPressed: () => controller.loadMore(),
                    child: Text('general'.message('loadMore')),
                  ),
                ),
              );
            }
          }
          return const SizedBox.shrink();
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomRefreshWrapperWidget(
        onRefresh: () async {
          await controller.fetchList();
        },
        child: Scrollbar(
          controller: _scrollController,
          thickness: 5,
          radius: const Radius.circular(3),
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              ListDutyScheduleAppBarWidget(
                onTabChanged: _fetchByTabIndex,
              ),
              SliverPadding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    ListDutyScheduleWrapperWidget(
                      controller: controller,
                      currentIndex: _currentIndex,
                      days: _days,
                    ),
                  ]),
                ),
              ),
              SliverToBoxAdapter(
                child: _buildLoadMoreIndicator(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
