import 'package:flutter/material.dart';

import 'package:mobile/features/face_recognition/presentation/controllers/real_time_face_recognition_controller.dart';

class AnimationControllerHelper {
  final TickerProvider vsync;
  final RealTimeFaceRecognitionController controller;

  late AnimationController _pulseController;
  late AnimationController _scanController;
  late AnimationController _successController;
  late Animation<double> _scanAnimation;
  late Animation<double> _successAnimation;

  AnimationControllerHelper({
    required this.vsync,
    required this.controller,
  }) {
    _initializeAnimations();
    _startAnimations();
    _listenToController();
  }

  void _initializeAnimations() {
    _pulseController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: vsync,
    );
    _scanController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: vsync,
    );
    _successController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: vsync,
    );

    _scanAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _scanController,
      curve: Curves.linear,
    ));

    _successAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _successController,
      curve: Curves.elasticOut,
    ));
  }

  void _startAnimations() {
    _pulseController.repeat(reverse: true);
    _scanController.repeat();
  }

  void _listenToController() {
    controller.isSuccess.listen((success) {
      if (success) {
        _successController.forward();
      }
    });
  }

  void dispose() {
    _pulseController.dispose();
    _scanController.dispose();
    _successController.dispose();
  }

  // Getters for animations
  Listenable get animationListenable => Listenable.merge([
        _pulseController,
        _scanController,
        _successController,
      ]);

  Animation<double> get scanAnimation => _scanAnimation;
  Animation<double> get successAnimation => _successAnimation;
}
