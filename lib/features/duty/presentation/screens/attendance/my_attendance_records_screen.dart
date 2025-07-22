import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/duty/domain/repositories/repository.dart';
import 'package:mobile/features/duty/domain/usecases/usecase.dart';
import 'package:mobile/features/duty/presentation/controllers/controller.dart';
import 'package:mobile/features/duty/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class MyAttendanceRecordsScreen extends StatefulWidget {
  const MyAttendanceRecordsScreen({super.key});

  @override
  State<MyAttendanceRecordsScreen> createState() =>
      _MyAttendanceRecordsScreenState();
}

class _MyAttendanceRecordsScreenState extends State<MyAttendanceRecordsScreen> {
  late MyAttendanceRecordsController controller;
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    MyAttendanceRecordsBinding().dependencies();
    MyAttendanceRecordsBinding().registerMyAttendanceRecords();

    if (!Get.isRegistered<FetchMyAttendanceRecordsUsecase>()) {
      Get.lazyPut<FetchMyAttendanceRecordsUsecase>(
        () => FetchMyAttendanceRecordsUsecase(
            Get.find<DutyAttendanceRepository>()),
      );
    }
    if (!Get.isRegistered<MyAttendanceRecordsController>()) {
      Get.lazyPut<MyAttendanceRecordsController>(
        () => MyAttendanceRecordsController(
            Get.find<FetchMyAttendanceRecordsUsecase>()),
      );
    }

    controller = Get.find<MyAttendanceRecordsController>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(0);

        final args = Get.arguments as Map<String, dynamic>?;
        if (args != null) {
          final shouldRefresh = args['shouldRefresh'] as bool? ?? false;
          final successMessage = args['successMessage'] as String?;

          if (shouldRefresh) {
            controller.fetchList();
          }

          if (successMessage != null && successMessage.isNotEmpty) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(successMessage),
                  backgroundColor: context.tertiary,
                  duration: const Duration(seconds: 3),
                ),
              );
            });
          }
        } else {
          controller.fetchList();
        }
      }
    });
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomRefreshWrapperWidget(
        onRefresh: () async {
          await controller.refresh();
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
              MyAttendanceRecordsWrapperWidget(
                controller: controller,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return CustomTertiaryAppBarWidget(
      titleText: 'myDutyAttendance'.menu(),
      pinned: true,
      toolbarHeight: 56,
      showBackButton: false,
      leading: IconButton(
        onPressed: () {
          Get.offAllNamed(AppRoute.home);
        },
        icon: const Icon(
          Icons.chevron_left,
          size: 24,
        ),
      ),
      actions: [
        Obx(() {
          final hasFilters = controller.hasFiltersApplied;
          return IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                enableDrag: true,
                isDismissible: true,
                useSafeArea: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                builder: (context) => FilterDutyAttendanceBottomSheetWidget(
                    controller: controller),
              );
            },
            icon: Icon(
              hasFilters ? Icons.filter_list_off : Icons.filter_list,
              color: hasFilters ? context.primary : context.onSurface,
            ),
            style: IconButton.styleFrom(
              foregroundColor: context.onSurface,
              overlayColor: context.primary.withValues(alpha: 0.1),
            ),
          );
        }),
      ],
    );
  }
}
