import 'package:flutter/material.dart';

class CustomSliverRefreshWrapperWidget extends StatelessWidget {
  final Future<void> Function() onRefresh;

  const CustomSliverRefreshWrapperWidget({
    super.key,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 80,
        child: RefreshIndicator(
          onRefresh: onRefresh,
          displacement: 20,
          color: Theme.of(context).colorScheme.primary,
          backgroundColor: Theme.of(context).colorScheme.surface,
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: const [SizedBox(height: 100)],
          ),
        ),
      ),
    );
  }
}
