import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class SearchLabScheduleScreen extends StatefulWidget {
  const SearchLabScheduleScreen({super.key});

  @override
  State<SearchLabScheduleScreen> createState() =>
      _SearchLabScheduleScreenState();
}

class _SearchLabScheduleScreenState extends State<SearchLabScheduleScreen> {
  late final ScrollController _scrollController;
  late final LabScheduleWrapperController _wrapperController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_scrollListener);
    _wrapperController = Get.find<LabScheduleWrapperController>(tag: 'search');
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
      _wrapperController.triggerLoadMore();
    }
  }

  dynamic _getActiveController() {
    return _wrapperController.isMySchedule.value
        ? Get.find<MyLabScheduleController>(tag: 'search')
        : Get.find<ListLabScheduleController>(tag: 'search');
  }

  @override
  Widget build(BuildContext context) {
    final activeController = _getActiveController();

    return Scaffold(
      body: CustomRefreshWrapperWidget(
        onRefresh: () async {
          final searchKey = '${activeController.baseStateKey}SearchController';
          final currentQuery = activeController.getControllerValue(searchKey);
          if (currentQuery.isNotEmpty) {
            await activeController.refresh(filters: {'search': currentQuery});
          } else {
            await activeController.refresh();
          }
        },
        child: Scrollbar(
          controller: _scrollController,
          child: CustomScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            slivers: [
              _buildAppBar(),
              SearchLabScheduleWrapperWidget(controller: _wrapperController),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildStickyFooter(context),
    );
  }

  Widget _buildStickyFooter(
    BuildContext context,
  ) {
    return Obx(() {
      final count = _wrapperController.items.length;
      final label = _wrapperController.isMySchedule.value
          ? 'labSchedule'.messageWith('itemCount.my', {'count': count})
          : 'labSchedule'.messageWith('itemCount.all', {'count': count});

      return StickyFooterWidget(
        itemCount: count,
        label: label,
      );
    });
  }

  Widget _buildAppBar() {
    return CustomTertiaryAppBarWidget(
      toolbarHeight: 72,
      pinned: true,
      onBackPressed: () {
        _wrapperController.resetAll();
        Get.back();
      },
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(1),
        child: SizedBox.shrink(),
      ),
      title: SearchLabScheduleFormWidget(controller: _wrapperController),
    );
  }
}
