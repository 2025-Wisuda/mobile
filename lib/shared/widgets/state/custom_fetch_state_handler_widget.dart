import 'package:flutter/material.dart';

import 'package:skeletonizer/skeletonizer.dart';

import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

/// Generic handler for fetch states that reduces boilerplate across the app
/// Uses FetchStateEnum UI extensions for consistent state presentations
Widget customFetchStateHandler({
  required BuildContext context,
  required FetchStateEnum state,
  required String feature,
  required Widget Function() onSuccess,
  String? customErrorMessage,
  IconData? customIcon,
  String? customTitle,
  String? customSubtitle,
  double? customIconSize,
  bool useSkeletonizer = false,
  Map<String, String>? messageArgs,
}) {
  switch (state) {
    case FetchStateEnum.loading:
    case FetchStateEnum.searching:
    case FetchStateEnum.filtering:
      // Use Skeletonizer for more powerful loading states
      if (useSkeletonizer) {
        return Skeletonizer(
          enabled: true,
          child: onSuccess(),
        );
      }

      // Traditional loading widget
      return customHandlingStateWidget(
        context,
        item: state.shouldShowLoadingIndicator
            ? null
            : Icon(
                customIcon ?? state.defaultIcon,
                size: customIconSize ?? state.defaultIconSize,
                color: context.primary,
              ),
        title: customTitle ??
            (messageArgs != null
                ? feature.message(state.getDefaultMessageKey(feature),
                    args: messageArgs)
                : feature.message(state.getDefaultMessageKey(feature))),
      );

    case FetchStateEnum.failure:
    case FetchStateEnum.timeout:
      return customHandlingStateWidget(
        context,
        item: Icon(
          customIcon ?? state.defaultIcon,
          size: customIconSize ?? state.defaultIconSize,
          color: context.error,
        ),
        title: customErrorMessage ??
            customTitle ??
            feature.message(state.getDefaultMessageKey(feature)),
      );

    case FetchStateEnum.empty:
      return customHandlingStateWidget(
        context,
        item: Icon(
          customIcon ?? state.defaultIcon,
          size: customIconSize ?? state.defaultIconSize,
          color: context.onSurface.withValues(alpha: 0.5),
        ),
        title:
            customTitle ?? feature.message(state.getDefaultMessageKey(feature)),
        subtitle: customSubtitle,
      );

    case FetchStateEnum.success:
      // Wrap success content with disabled Skeletonizer for consistency
      if (useSkeletonizer) {
        return Skeletonizer(
          enabled: false,
          child: onSuccess(),
        );
      }

      return onSuccess();

    default:
      return const SizedBox.shrink();
  }
}

/// Skeletonizer-specific handler for more advanced loading states
/// Automatically wraps success content with Skeletonizer
Widget customSkeletonizerHandler({
  required BuildContext context,
  required FetchStateEnum state,
  required String feature,
  required Widget Function() onSuccess,
  String? customErrorMessage,
  IconData? customIcon,
  String? customTitle,
  String? customSubtitle,
  double? customIconSize,
  Map<String, String>? messageArgs,
}) {
  return customFetchStateHandler(
    context: context,
    state: state,
    feature: feature,
    onSuccess: onSuccess,
    customErrorMessage: customErrorMessage,
    customIcon: customIcon,
    customTitle: customTitle,
    customSubtitle: customSubtitle,
    customIconSize: customIconSize,
    useSkeletonizer: true,
    messageArgs: messageArgs,
  );
}

/// Enhanced handler with i18n args support for dynamic messages
///
/// Example usage:
/// ```dart
/// customFetchStateHandlerWithArgs(
///   context: context,
///   state: controller.state,
///   feature: 'roomBooking',
///   messageArgs: {'date': selectedDate, 'room': roomName},
///   onSuccess: () => YourContent(),
/// )
/// ```
Widget customFetchStateHandlerWithArgs({
  required BuildContext context,
  required FetchStateEnum state,
  required String feature,
  required Widget Function() onSuccess,
  Map<String, String>? messageArgs,
  String? customErrorMessage,
  IconData? customIcon,
  String? customTitle,
  String? customSubtitle,
  double? customIconSize,
  bool useSkeletonizer = false,
}) {
  return customFetchStateHandler(
    context: context,
    state: state,
    feature: feature,
    onSuccess: onSuccess,
    customErrorMessage: customErrorMessage,
    customIcon: customIcon,
    customTitle: customTitle,
    customSubtitle: customSubtitle,
    customIconSize: customIconSize,
    useSkeletonizer: useSkeletonizer,
    messageArgs: messageArgs,
  );
}
