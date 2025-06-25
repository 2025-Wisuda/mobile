// import 'package:flutter/material.dart';

// import 'package:mobile/shared/enums/enum.dart';
// import 'package:mobile/shared/widgets/widget.dart';

// class CustomPaginatedLayoutWidget extends StatelessWidget {
//   final Widget content;
//   final bool isLoadingMore;
//   final FetchStateEnum state;
//   final VoidCallback? onLoadMore;
//   final bool canLoadMore;
//   final BoxConstraints? constraints;
//   final bool showActionButtons;
//   final Widget? actionButtons;
//   final bool showScrollbar;
//   final bool scrollbarThumbVisibility;
//   final Widget? loadingWidget;
//   final EdgeInsets loadingPadding;
//   final CrossAxisAlignment crossAxisAlignment;
//   final bool useCustomLayout;
//   final Color? backgroundColor;
//   final ScrollController? scrollController;
//   final double loadMoreThreshold;
//   final EdgeInsets? contentPadding;

//   const CustomPaginatedLayoutWidget({
//     super.key,
//     required this.content,
//     required this.isLoadingMore,
//     required this.state,
//     this.onLoadMore,
//     this.canLoadMore = true,
//     this.constraints,
//     this.showActionButtons = false,
//     this.actionButtons,
//     this.showScrollbar = true,
//     this.scrollbarThumbVisibility = false,
//     this.loadingWidget,
//     this.loadingPadding = const EdgeInsets.symmetric(vertical: 16),
//     this.crossAxisAlignment = CrossAxisAlignment.start,
//     this.useCustomLayout = true,
//     this.backgroundColor,
//     this.scrollController,
//     this.loadMoreThreshold = 100.0,
//     this.contentPadding,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final ScrollController effectiveController =
//         scrollController ?? ScrollController();

//     Widget contentWidget = Column(
//       crossAxisAlignment: crossAxisAlignment,
//       children: [
//         if (showActionButtons && actionButtons != null) ...[
//           actionButtons!,
//           const SizedBox(height: 16),
//         ],
//         if (contentPadding != null)
//           Padding(
//             padding: contentPadding!,
//             child: content,
//           )
//         else
//           content,
//         if (isLoadingMore)
//           Padding(
//             padding: loadingPadding,
//             child: loadingWidget ??
//                 const Center(
//                   child: CircularProgressIndicator(),
//                 ),
//           ),
//       ],
//     );

//     Widget scrollableWidget = NotificationListener<ScrollNotification>(
//       onNotification: (scrollInfo) {
//         if (scrollInfo.metrics.pixels >=
//                 scrollInfo.metrics.maxScrollExtent - loadMoreThreshold &&
//             !isLoadingMore &&
//             state != FetchStateEnum.loading &&
//             canLoadMore &&
//             onLoadMore != null) {
//           onLoadMore!();
//         }
//         return false;
//       },
//       child: showScrollbar
//           ? Scrollbar(
//               controller: effectiveController,
//               thumbVisibility: scrollbarThumbVisibility,
//               child: SingleChildScrollView(
//                 controller: effectiveController,
//                 child: contentWidget,
//               ),
//             )
//           : SingleChildScrollView(
//               controller: effectiveController,
//               child: contentWidget,
//             ),
//     );

//     if (constraints != null) {
//       scrollableWidget = ConstrainedBox(
//         constraints: constraints!,
//         child: scrollableWidget,
//       );
//     }

//     if (useCustomLayout) {
//       return CustomPrimaryLayoutWidget(
//         child: scrollableWidget,
//       );
//     }

//     return Container(
//       color: backgroundColor,
//       child: scrollableWidget,
//     );
//   }
// }
