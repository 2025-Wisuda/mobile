// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:mobile/features/user/presentation/controllers/controller.dart';
// import 'package:mobile/shared/enums/enum.dart';
// import 'package:mobile/shared/extensions/extension.dart';

// enum CourseMenuActionType { course, courseSession }

// class GenericCourseMenuActionWidget extends StatelessWidget {
//   final CourseMenuActionType type;
//   final String entityId;
//   final String? courseId;
//   final String title;
//   final bool isTeachingAssistant;
//   final bool isOwner;
//   final VoidCallback? onEdit;
//   final VoidCallback? onCreateSession;
//   final VoidCallback? onDelete;

//   const GenericCourseMenuActionWidget({
//     super.key,
//     required this.type,
//     required this.entityId,
//     this.courseId,
//     required this.title,
//     required this.isTeachingAssistant,
//     required this.isOwner,
//     this.onEdit,
//     this.onCreateSession,
//     this.onDelete,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final userProfileController = Get.find<UserProfileController>();

//     return Obx(() {
//       final userGroup = userProfileController.userGroup;
//       final isLabAssistant =
//           userGroup == GroupEnum.laboratoryAssistant.displayName.toLowerCase();

//       if (!isLabAssistant) {
//         return const SizedBox.shrink();
//       }

//       final menuItems = <PopupMenuEntry<String>>[];

//       if (isTeachingAssistant) {
//         menuItems.add(
//           PopupMenuItem<String>(
//             value: 'edit',
//             child: Row(
//               spacing: 12,
//               children: [
//                 Container(
//                   padding: const EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                     color: context.primaryContainer,
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Icon(
//                     Icons.edit_outlined,
//                     color: context.primary,
//                     size: 18,
//                   ),
//                 ),
//                 Text(
//                   _getEditText(),
//                   style: context
//                       .bodyMedium(600)
//                       ?.copyWith(color: context.onSurface),
//                 ),
//               ],
//             ),
//           ),
//         );
//       }

//       if (type == CourseMenuActionType.course &&
//           isTeachingAssistant &&
//           onCreateSession != null) {
//         menuItems.add(
//           PopupMenuItem<String>(
//             value: 'create_session',
//             child: Row(
//               spacing: 12,
//               children: [
//                 Container(
//                   padding: const EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                     color: context.secondaryContainer,
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Icon(
//                     Icons.add_circle_outline,
//                     color: context.secondary,
//                     size: 18,
//                   ),
//                 ),
//                 Text(
//                   'course'.message('createCourseSession'),
//                   style: context
//                       .bodyMedium(600)
//                       ?.copyWith(color: context.onSurface),
//                 ),
//               ],
//             ),
//           ),
//         );
//       }

//       bool hasEditOrCreate = isTeachingAssistant ||
//           (type == CourseMenuActionType.course &&
//               isTeachingAssistant &&
//               onCreateSession != null);
//       if (hasEditOrCreate && isOwner) {
//         menuItems.add(
//           PopupMenuItem<String>(
//             enabled: false,
//             height: 1,
//             child: Divider(
//               height: 1,
//               color: context.outline.withValues(alpha: 0.6),
//             ),
//           ),
//         );
//       }

//       if (isOwner) {
//         menuItems.add(
//           PopupMenuItem<String>(
//             value: 'delete',
//             child: Row(
//               spacing: 12,
//               children: [
//                 Container(
//                   padding: const EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                     color: context.errorContainer,
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Icon(
//                     Icons.delete_outline,
//                     color: context.error,
//                     size: 18,
//                   ),
//                 ),
//                 Text(
//                   _getDeleteText(),
//                   style:
//                       context.bodyMedium(600)?.copyWith(color: context.error),
//                 ),
//               ],
//             ),
//           ),
//         );
//       }

//       // If no menu items, don't show anything
//       if (menuItems.isEmpty) {
//         return const SizedBox.shrink();
//       }

//       return PopupMenuButton<String>(
//         icon: Icon(Icons.more_vert, color: context.onSurface, size: 24),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//         elevation: 8,
//         offset: const Offset(0, 40),
//         itemBuilder: (BuildContext context) => menuItems,
//         onSelected: (String value) {
//           switch (value) {
//             case 'edit':
//               if (onEdit != null) onEdit!();
//               break;
//             case 'create_session':
//               if (onCreateSession != null) onCreateSession!();
//               break;
//             case 'delete':
//               _showDeleteConfirmationDialog(context);
//               break;
//           }
//         },
//       );
//     });
//   }

//   String _getEditText() {
//     switch (type) {
//       case CourseMenuActionType.course:
//         return 'course'.message('updateCourse');
//       case CourseMenuActionType.courseSession:
//         return 'course'.message('updateCourseSession');
//     }
//   }

//   String _getDeleteText() {
//     switch (type) {
//       case CourseMenuActionType.course:
//         return 'course'.message('deleteCourse');
//       case CourseMenuActionType.courseSession:
//         return 'course'.message('deleteCourseSession');
//     }
//   }

//   String _getDeleteConfirmationTitle() {
//     switch (type) {
//       case CourseMenuActionType.course:
//         return 'course'.message('delete');
//       case CourseMenuActionType.courseSession:
//         return 'course'.message('deleteSession');
//     }
//   }

//   String _getDeleteConfirmationMessage() {
//     switch (type) {
//       case CourseMenuActionType.course:
//         return 'course'.message('areYouSureYouWantToDelete');
//       case CourseMenuActionType.courseSession:
//         return 'course'.message('areYouSureYouWantToDeleteSession');
//     }
//   }

//   void _showDeleteConfirmationDialog(BuildContext context) {
//     final deleteText = _getDeleteConfirmationTitle();
//     showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (BuildContext dialogContext) => AlertDialog(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(16),
//         ),
//         titlePadding: const EdgeInsets.all(20),
//         contentPadding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
//         actionsPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
//         title: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           spacing: 16,
//           children: [
//             Container(
//               padding: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 color: context.shadow,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: const Icon(Icons.warning_amber_rounded, size: 28),
//             ),
//             Flexible(
//               child: Text(
//                 '$deleteText $title',
//                 style: context.bodyMedium(700),
//                 overflow: TextOverflow.ellipsis,
//                 maxLines: 2,
//               ),
//             ),
//           ],
//         ),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           spacing: 16,
//           children: [
//             Text(
//               _getDeleteConfirmationMessage(),
//               style: context.bodyMedium(500),
//             ),
//             Container(
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: context.errorContainer.withValues(alpha: 0.3),
//                 borderRadius: BorderRadius.circular(12),
//                 border: Border.all(
//                   color: context.error.withValues(alpha: 0.2),
//                   width: 1,
//                 ),
//               ),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 spacing: 12,
//                 children: [
//                   Icon(Icons.info_outline, color: context.error, size: 16),
//                   Expanded(
//                     child: Text(
//                       'course'.message('thisActionCannotBeUndone'),
//                       style: context
//                           .bodySmall(500)
//                           ?.copyWith(color: context.error),
//                       overflow: TextOverflow.visible,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => context.router.pop(),
//             style: TextButton.styleFrom(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 24,
//                 vertical: 12,
//               ),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 side: BorderSide(
//                   color: context.outline.withValues(alpha: 0.3),
//                 ),
//               ),
//               backgroundColor: context.surface,
//             ),
//             child: Text(
//               'course'.message('cancel'),
//               style: context.bodyMedium(600),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               context.router.pop();
//               if (onDelete != null) onDelete!();
//             },
//             style: ElevatedButton.styleFrom(
//               backgroundColor: context.error,
//               foregroundColor: context.onError,
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 24,
//                 vertical: 12,
//               ),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               elevation: 0,
//             ),
//             child: Row(
//               mainAxisSize: MainAxisSize.min,
//               spacing: 8,
//               children: [
//                 const Icon(Icons.delete_forever, size: 18),
//                 Text(
//                   'course'.message('yesDelete'),
//                   style:
//                       context.bodyMedium(600)?.copyWith(color: context.onError),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
