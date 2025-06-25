import 'package:flutter/material.dart';

class CustomRefreshWrapperWidget extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final Widget child;
  final Color? backgroundColor;
  final Color? color;
  final double displacement;
  final bool notificationPredicate;

  const CustomRefreshWrapperWidget({
    super.key,
    required this.onRefresh,
    required this.child,
    this.backgroundColor,
    this.color,
    this.displacement = 40.0,
    this.notificationPredicate = true,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.surface,
      color: color ?? Theme.of(context).colorScheme.primary,
      displacement: displacement,
      strokeWidth: 2.5,
      triggerMode: RefreshIndicatorTriggerMode.onEdge,
      notificationPredicate: notificationPredicate
          ? (ScrollNotification notification) {
              return notification.depth == 0 &&
                  notification.metrics.pixels <= 0;
            }
          : (ScrollNotification notification) => notification.depth == 0,
      child: child,
    );
  }
}
