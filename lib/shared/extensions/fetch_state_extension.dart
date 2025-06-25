import 'package:flutter/material.dart';

import '../enums/fetch_state_enum.dart';

/// Extension on [FetchStateEnum] to map states to widgets easily.
///
/// This extension provides a method [toWidget] that maps each state
/// of [FetchStateEnum] to a corresponding widget. It simplifies handling
/// different UI states such as loading, loaded, empty, and error.
///
/// ### Example Usage:
/// ```dart
/// final state = FetchStateEnum.loading;
/// return state.toWidget(
///   loadingWidget: CircularProgressIndicator(),
///   loadedWidget: Text('Data Loaded'),
///   emptyWidget: Text('No data found'),
///   errorWidget: Text('Something went wrong'),
///   initialWidget: SizedBox.shrink(),
/// );
/// ```
///
/// ### Parameters:
/// - [initialWidget]: Widget to display when the state is `initial`.
///   Defaults to `SizedBox.shrink()` if not provided.
/// - [loadingWidget]: Widget to display when the state is `loading`.
///   **Required**.
/// - [loadedWidget]: Widget to display when the state is `success`.
///   **Required**.
/// - [emptyWidget]: Widget to display when the state is `empty`.
///   Defaults to `SizedBox.shrink()` if not provided.
/// - [errorWidget]: Widget to display when the state is `failure`.
///   Defaults to `SizedBox.shrink()` if not provided.
///
/// ### Returns:
/// A [Widget] corresponding to the current state of [FetchStateEnum].
extension FetchStateExtension on FetchStateEnum {
  /// Maps the current [FetchStateEnum] to a widget.
  ///
  /// This method simplifies the process of handling different UI states
  /// by mapping each state to a specific widget.
  ///
  /// See the extension documentation for detailed usage examples.
  Widget toWidget({
    Widget? initialWidget,
    required Widget loadingWidget,
    required Widget loadedWidget,
    Widget? emptyWidget,
    Widget? errorWidget,
  }) {
    switch (this) {
      case FetchStateEnum.initial:
        return initialWidget ?? const SizedBox.shrink();
      case FetchStateEnum.loading:
        return loadingWidget;
      case FetchStateEnum.success:
        return loadedWidget;
      case FetchStateEnum.empty:
        return emptyWidget ?? const SizedBox.shrink();
      case FetchStateEnum.failure:
        return errorWidget ?? const SizedBox.shrink();
      default:
        return const SizedBox.shrink();
    }
  }
}
