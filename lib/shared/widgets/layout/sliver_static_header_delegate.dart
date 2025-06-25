import 'package:flutter/material.dart';

class SliverStaticHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double height;

  SliverStaticHeaderDelegate({required this.child, required this.height});

  @override
  double get minExtent => height;

  @override
  double get maxExtent => height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(covariant SliverStaticHeaderDelegate oldDelegate) {
    return oldDelegate.child != child || oldDelegate.height != height;
  }
}
