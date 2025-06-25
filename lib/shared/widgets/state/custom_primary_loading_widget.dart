import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

class CustomPrimaryLoadingWidget extends StatefulWidget {
  const CustomPrimaryLoadingWidget({super.key});

  @override
  State<CustomPrimaryLoadingWidget> createState() =>
      _CustomPrimaryLoadingWidgetState();
}

class _CustomPrimaryLoadingWidgetState extends State<CustomPrimaryLoadingWidget>
    with TickerProviderStateMixin {
  late List<AnimationController> _controllers;
  late List<Animation<double>> _animations;

  static const double _size = 40;
  static const Duration _duration = Duration(milliseconds: 300);
  static const int _colorCount = 3;

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
  }

  void _initializeAnimations() {
    _controllers = List.generate(
      _colorCount,
      (index) => AnimationController(
        duration: _duration,
        vsync: this,
      ),
    );

    _animations = _controllers.map((controller) {
      return Tween<double>(begin: 0.3, end: 1.0).animate(
        CurvedAnimation(
          parent: controller,
          curve: Curves.easeInOut,
        ),
      );
    }).toList();

    for (int i = 0; i < _controllers.length; i++) {
      Future.delayed(Duration(milliseconds: i * 50), () {
        if (mounted) {
          _controllers[i].repeat(reverse: true);
        }
      });
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = [
      context.primary,
      context.secondary,
      context.error,
    ];

    return SizedBox(
      height: _size,
      width: _size * 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          colors.length,
          (index) => AnimatedBuilder(
            animation: _animations[index],
            builder: (context, child) {
              return Opacity(
                opacity: _animations[index].value,
                child: Transform.scale(
                  scale: _animations[index].value,
                  child: Transform.rotate(
                    angle: _animations[index].value * 2 * 3.14159,
                    child: Container(
                      width: _size / 4,
                      height: _size / 4,
                      decoration: BoxDecoration(
                        color: colors[index],
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
