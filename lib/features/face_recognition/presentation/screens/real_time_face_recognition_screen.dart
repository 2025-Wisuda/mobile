import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/core/routes/app_route.dart';
import 'package:mobile/features/face_recognition/domain/entities/entity.dart';
import 'package:mobile/features/face_recognition/presentation/controllers/controller.dart';
import 'package:mobile/features/face_recognition/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/text_helper_extensions.dart';
import 'package:mobile/shared/extensions/text_style_extension.dart';
import 'package:mobile/shared/extensions/theme_color_extension.dart';
import 'package:mobile/shared/utils/util.dart';
import 'package:mobile/shared/widgets/app_bar/app_bar.dart';
import 'package:mobile/shared/widgets/card/card.dart';

class RealTimeFaceRecognitionScreen extends StatefulWidget {
  final FaceRecognitionConfig config;
  final String? attendanceId;
  final String? actionType;
  final Map<String, dynamic>? additionalData;

  const RealTimeFaceRecognitionScreen({
    super.key,
    required this.config,
    this.attendanceId,
    this.actionType,
    this.additionalData,
  });

  @override
  State<RealTimeFaceRecognitionScreen> createState() =>
      _RealTimeFaceRecognitionScreenState();
}

class _RealTimeFaceRecognitionScreenState
    extends State<RealTimeFaceRecognitionScreen> with WidgetsBindingObserver {
  late RealTimeFaceRecognitionController controller;

  static const bool useModernUI = true; // Set false for V1, true for V2

  // Auto capture mode examples:
  // - Current mode (ML Kit + Timer): config.mode = FaceRecognitionMode.current
  // - Pure timer mode: config.mode = FaceRecognitionMode.pureTimer
  // - Pure timer + resize mode: config.mode = FaceRecognitionMode.pureTimerResize
  // - Custom timer delay: timerAutoCaptureDelay = Duration(seconds: 1)

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    controller = Get.put(RealTimeFaceRecognitionController(
      config: config,
      recognizeFaceUseCase: Get.find(),
      connectWebSocketUseCase: Get.find(),
      disconnectWebSocketUseCase: Get.find(),
    ));
  }

  FaceRecognitionConfig get config => widget.config;

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      controller.disposeCamera();
    } else if (state == AppLifecycleState.resumed) {
      controller.reinitializeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          // Dispose camera safely
          try {
            controller.disposeCamera();
          } catch (e) {
            SimpleLogger.error(
                '[V1_V2_ERROR] Error disposing camera on pop: $e');
          }
        }
      },
      child: Scaffold(
        backgroundColor: context.surface,
        body: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    if (!Get.isRegistered<RealTimeFaceRecognitionController>()) {
      return _buildLoadingState(context);
    }

    return GetX<RealTimeFaceRecognitionController>(
      builder: (controller) {
        if (!controller.isInitialized.value) {
          return _buildLoadingState(context);
        }

        return useModernUI ? _buildModernUI(context) : _buildClassicUI(context);
      },
    );
  }

  // V1: Classic UI
  Widget _buildClassicUI(BuildContext context) {
    return Stack(
      children: [
        FaceRecognitionWrapperWidget(
          config: config,
          useModernUI: false,
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top + 16,
          left: 20,
          right: 20,
          child: _buildClassicAppBar(context),
        ),
      ],
    );
  }

  // V2: Modern UI
  Widget _buildModernUI(BuildContext context) {
    return Scaffold(
      backgroundColor: context.surface,
      appBar: CustomAppBarWithBorder(
        title: 'faceRecognition'.menu(),
        onBackPressed: () {
          controller.disposeCamera();
          // Default safe navigation - back to previous screen
          if (Navigator.of(context).canPop()) {
            Get.back();
          } else {
            // Fallback to attendance records if can't go back
            Get.offAllNamed(AppRoute.myAttendanceRecords);
          }
        },
      ),
      body: Stack(
        children: [
          FaceRecognitionWrapperWidget(
            config: config,
            useModernUI: true,
          ),
          Positioned(
            bottom: MediaQuery.of(context).padding.bottom + 100,
            left: 16,
            right: 16,
            child: _buildModernStatusSection(context),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: context.primary,
          ),
          const SizedBox(height: 20),
          Text(
            controller.statusMessage.value.isNotEmpty
                ? controller.statusMessage.value
                : 'faceRecognition'.message('initializingCamera'),
            style: context.titleMedium().copyWith(
                  color: context.onSurface,
                ),
            textAlign: TextAlign.center,
          ),
          if (controller.isRetrying.value) ...[
            const SizedBox(height: 10),
            Text(
              'faceRecognition'.message('retrying'),
              style: context.bodyMedium().copyWith(
                    color: context.onSurface.withValues(alpha: 0.7),
                  ),
            ),
          ],
          if (controller.getSubmitState('initialization') ==
              SubmitStateEnum.failure) ...[
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.initializeServices();
              },
              child: Text('Retry'),
            ),
          ],
        ],
      ),
    );
  }

  // V1: Classic App Bar
  Widget _buildClassicAppBar(BuildContext context) {
    return Row(
      children: [
        _buildBorderedContainer(
          context,
          child: IconButton(
            onPressed: () {
              controller.disposeCamera();
              // Default safe navigation - back to previous screen
              if (Navigator.of(context).canPop()) {
                Get.back();
              } else {
                // Fallback to attendance records if can't go back
                Get.offAllNamed(AppRoute.myAttendanceRecords);
              }
            },
            icon: Icon(
              Icons.close,
              color: context.onSurface,
            ),
          ),
        ),
      ],
    );
  }

  // V2: Modern Status Section
  Widget _buildModernStatusSection(BuildContext context) {
    return CustomCardItemWidget(
      backgroundColor: context.surface,
      showBorder: true,
      mainContent: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(() => Text(
                  controller.statusMessage.value,
                  style: context.titleMedium().copyWith(
                        color: context.onSurface,
                        fontWeight: FontWeight.w600,
                      ),
                  textAlign: TextAlign.center,
                )),
            const SizedBox(height: 8),
            Obx(() => Text(
                  controller.statusSubtitle.value,
                  style: context.bodyMedium().copyWith(
                        color: context.onSurface.withValues(alpha: 0.7),
                      ),
                  textAlign: TextAlign.center,
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildBorderedContainer(BuildContext context,
      {required Widget child}) {
    return Container(
      decoration: BoxDecoration(
        color: context.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: context.outline.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: child,
    );
  }
}
