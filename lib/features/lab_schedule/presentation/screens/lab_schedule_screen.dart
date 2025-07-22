import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/widget.dart';
import 'package:mobile/shared/shared.dart';

class LabScheduleScreen extends StatefulWidget {
  const LabScheduleScreen({super.key});

  @override
  State<LabScheduleScreen> createState() => _LabScheduleScreenState();
}

class _LabScheduleScreenState extends State<LabScheduleScreen> {
  late final ScrollController _scrollController;
  late final LabScheduleWrapperController _wrapperController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    _wrapperController = Get.find<LabScheduleWrapperController>(tag: 'list');
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
        ? Get.find<MyLabScheduleController>(tag: 'list')
        : Get.find<ListLabScheduleController>(tag: 'list');
  }

  @override
  Widget build(BuildContext context) {
    final activeController = _getActiveController();
    return Scaffold(
      body: CustomRefreshWrapperWidget(
        onRefresh: () async {
          final dateString = DateHelper.formatIsoDate(
              date: activeController.selectedDate.value);
          await activeController.fetchList({'date': dateString});
        },
        child: Scrollbar(
          controller: _scrollController,
          child: CustomScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            slivers: [
              Obx(() => _buildAppBar(
                    _wrapperController.isMySchedule.value,
                    _wrapperController.isMySchedule.value
                        ? _wrapperController.switchToAllSchedule
                        : _wrapperController.switchToMySchedule,
                  )),
              ListLabScheduleWrapperWidget(controller: _wrapperController),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildAppBar(bool isMySchedule, VoidCallback onToggle) {
  return CustomSliverAppBarWithBorder(
    centerTitle: false,
    toolbarHeight: 72,
    pinned: true,
    showBackButton: false,
    title: 'labSchedule'.menu(),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        child: CustomTertiaryToggleWidget(
          firstOption: 'common'.message('me'),
          secondOption: 'common'.message('all'),
          isFirstSelected: isMySchedule,
          onToggle: onToggle,
        ),
      ),
    ],
  );
}
