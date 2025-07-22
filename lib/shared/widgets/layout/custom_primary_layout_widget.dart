import 'package:flutter/material.dart';

class CustomPrimaryLayoutWidget extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final Axis scrollDirection;
  final ScrollPhysics? physics;

  const CustomPrimaryLayoutWidget({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.scrollDirection = Axis.vertical,
    this.physics,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: padding,
      scrollDirection: scrollDirection,
      physics: physics ?? const ClampingScrollPhysics(),
      child: child,
    );
  }
}
