import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/presentation/controllers/controller.dart';
import 'package:mobile/features/guest_visit/presentation/widgets/widget.dart';
import 'package:mobile/shared/widgets/widget.dart';

class GuestVisitScreen extends StatefulWidget {
  const GuestVisitScreen({super.key});

  @override
  State<GuestVisitScreen> createState() => _GuestVisitScreenState();
}

class _GuestVisitScreenState extends State<GuestVisitScreen> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
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
      (Get.find<ListGuestVisitController>()).loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final listGuestVisitController = Get.find<ListGuestVisitController>();

    return Scaffold(
      body: CustomRefreshWrapperWidget(
        onRefresh: () async {
          await listGuestVisitController.fetchList();
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
              ListGuestVisitAppBarWidget(),
              ListGuestVisitWrapperWidget(c: listGuestVisitController),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('/guest-visit/create'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
