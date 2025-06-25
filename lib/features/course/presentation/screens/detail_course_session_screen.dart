import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailCourseSessionScreen extends StatefulWidget {
  final String courseId;
  final String courseSessionId;

  const DetailCourseSessionScreen({
    super.key,
    required this.courseId,
    required this.courseSessionId,
  });

  @override
  State<DetailCourseSessionScreen> createState() =>
      _DetailCourseSessionScreenState();
}

class _DetailCourseSessionScreenState extends State<DetailCourseSessionScreen> {
  late final ScrollController _scrollController;
  late final DetailCourseSessionController detailCourseSessionController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    detailCourseSessionController = Get.find<DetailCourseSessionController>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        detailCourseSessionController.fetchDetail(
          [widget.courseId, widget.courseSessionId],
        );
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: DetailCourseSessionAppBarWidget(
          courseId: widget.courseId,
          courseSessionId: widget.courseSessionId,
        ),
      ),
      body: CustomRefreshWrapperWidget(
        onRefresh: () => detailCourseSessionController
            .fetchDetail([widget.courseId, widget.courseSessionId]),
        child: Scrollbar(
          controller: _scrollController,
          thickness: 5,
          radius: const Radius.circular(3),
          child: SingleChildScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DetailCourseSessionWrapperWidget(
                courseId: widget.courseId,
                courseSessionId: widget.courseSessionId,
                c: detailCourseSessionController,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
