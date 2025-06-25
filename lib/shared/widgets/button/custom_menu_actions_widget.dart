import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/dialog/custom_confirm_dialog_widget.dart';

enum MenuActionType { course, courseSession, general }

class CustomMenuActionsWidget extends StatelessWidget {
  final MenuActionType type;
  final String entityId;
  final String? parentId;
  final String title;
  final bool isTeachingAssistant;
  final bool isOwner;
  final VoidCallback? onUpdate;
  final VoidCallback? onCreate;
  final VoidCallback? onDelete;
  final String? updateText;
  final String? createText;
  final String? deleteText;
  final String? deleteConfirmationTitle;
  final String? deleteConfirmationMessage;

  const CustomMenuActionsWidget({
    super.key,
    required this.type,
    required this.entityId,
    this.parentId,
    required this.title,
    required this.isTeachingAssistant,
    required this.isOwner,
    this.onUpdate,
    this.onCreate,
    this.onDelete,
    this.updateText,
    this.createText,
    this.deleteText,
    this.deleteConfirmationTitle,
    this.deleteConfirmationMessage,
  });

  @override
  Widget build(BuildContext context) {
    final userGroup = Get.find<UserProfileController>().userGroup;
    final isLabAssistant =
        userGroup == GroupEnum.laboratoryAssistant.displayName.toLowerCase();

    if (!isLabAssistant) return const SizedBox.shrink();

    final hasTAOptions =
        isTeachingAssistant && (onUpdate != null || onCreate != null);
    if (!(hasTAOptions || isOwner && onDelete != null)) {
      return const SizedBox.shrink();
    }

    return PopupMenuButton<String>(
      color: context.surface,
      shadowColor: context.outline,
      icon: Icon(Icons.more_vert, color: context.onSurface),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 2,
      offset: const Offset(0, 40),
      onSelected: (value) {
        switch (value) {
          case 'create':
            onCreate?.call();
            break;
          case 'update':
            onUpdate?.call();
            break;
          case 'delete':
            _showDeleteConfirmationDialog(context);
            break;
        }
      },
      itemBuilder: (_) {
        final items = <PopupMenuEntry<String>>[];

        if (isTeachingAssistant && onCreate != null) {
          items.add(_menuItem(context, 'create', Icons.add_circle_outline,
              _getCreateText(), context.tertiary));
        }
        if (isTeachingAssistant && onUpdate != null) {
          items.add(_menuItem(context, 'update', Icons.update_outlined,
              _getUpdateText(), context.primary));
        }
        if (isOwner && onDelete != null) {
          items.add(_menuItem(context, 'delete', Icons.delete_outline,
              _getDeleteText(), context.error));
        }

        return items;
      },
    );
  }

  PopupMenuItem<String> _menuItem(
    BuildContext context,
    String value,
    IconData icon,
    String text,
    Color color,
  ) {
    return PopupMenuItem<String>(
      value: value,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        dense: true,
        visualDensity: VisualDensity.compact,
        leading: Icon(icon, color: color, size: 20),
        title: Text(
          text,
          style: context.labelLarge().copyWith(color: color),
        ),
      ),
    );
  }

  void _showDeleteConfirmationDialog(BuildContext context) {
    showCustomConfirmDialog(
      context: context,
      title: '${_getDeleteConfirmationTitle()} $title',
      message: _getDeleteConfirmationMessage(),
      confirmText: type == MenuActionType.general
          ? 'Yes, Delete'
          : 'course'.message('yesDelete'),
      cancelText: type == MenuActionType.general
          ? 'Cancel'
          : 'course'.message('cancel'),
      type: DialogType.destructive,
      icon: Icons.delete_outline,
      barrierDismissible: false,
      onConfirm: onDelete ?? () {},
    );
  }

  String _getUpdateText() =>
      updateText ??
      switch (type) {
        MenuActionType.course => 'course'.message('updateCourse'),
        MenuActionType.courseSession => 'course'.message('updateCourseSession'),
        MenuActionType.general => 'Update',
      };

  String _getCreateText() =>
      createText ??
      switch (type) {
        MenuActionType.course => 'course'.message('createNewCourseSession'),
        MenuActionType.courseSession => 'Create',
        MenuActionType.general => 'Create',
      };

  String _getDeleteText() =>
      deleteText ??
      switch (type) {
        MenuActionType.course => 'course'.message('deleteCourse'),
        MenuActionType.courseSession => 'course'.message('deleteCourseSession'),
        MenuActionType.general => 'Delete',
      };

  String _getDeleteConfirmationTitle() =>
      deleteConfirmationTitle ??
      switch (type) {
        MenuActionType.course => 'course'.message('delete'),
        MenuActionType.courseSession => 'course'.message('deleteSession'),
        MenuActionType.general => 'Delete',
      };

  String _getDeleteConfirmationMessage() =>
      deleteConfirmationMessage ??
      switch (type) {
        MenuActionType.course => 'course'.message('areYouSureYouWantToDelete'),
        MenuActionType.courseSession =>
          'course'.message('areYouSureYouWantToDeleteSession'),
        MenuActionType.general => 'Are you sure you want to delete this item?',
      };
}
