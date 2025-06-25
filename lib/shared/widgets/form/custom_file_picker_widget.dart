import 'dart:io';

import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/form/custom_form_label_widget.dart';

class CustomFilePickerWidget extends StatelessWidget {
  final File? selectedFile;
  final String? networkFileUrl;
  final bool showNetworkFile;
  final bool hasDeletedNetworkFile;
  final VoidCallback? onTap;
  final VoidCallback? onDelete;
  final String feature;
  final String fieldKey;
  final List<String> allowedExtensions;
  final double height;
  final BorderRadius? borderRadius;
  final bool requiredField;
  final bool optional;

  const CustomFilePickerWidget({
    super.key,
    this.selectedFile,
    this.networkFileUrl,
    this.showNetworkFile = false,
    this.hasDeletedNetworkFile = false,
    this.onTap,
    this.onDelete,
    required this.feature,
    this.fieldKey = 'document',
    this.allowedExtensions = const ['pdf'],
    this.height = 120,
    this.borderRadius,
    this.requiredField = false,
    this.optional = false,
  });

  @override
  Widget build(BuildContext context) {
    final hasNetworkFile = showNetworkFile == true &&
        networkFileUrl != null &&
        networkFileUrl!.isNotEmpty &&
        !hasDeletedNetworkFile;
    final hasLocalFile = selectedFile != null && selectedFile!.existsSync();

    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFormLabelWidget(
            label: feature.label(fieldKey),
            requiredField: requiredField,
            optional: optional,
          ),
          const SizedBox(height: 6),
          LayoutBuilder(
            builder: (context, constraints) {
              final maxWidth = constraints.maxWidth;
              Widget fileWidget;

              if (hasLocalFile) {
                fileWidget = _buildLocalFileWidget(context, maxWidth);
              } else if (hasNetworkFile) {
                fileWidget = _buildNetworkFileWidget(context, maxWidth);
              } else {
                fileWidget = _buildPlaceholderWidget(context, maxWidth);
              }

              return fileWidget;
            },
          ),
        ],
      ),
    );
  }

  Widget _buildLocalFileWidget(BuildContext context, double maxWidth) {
    final fileName = selectedFile!.path.split('/').last;
    final fileExtension = fileName.split('.').last.toLowerCase();

    return Stack(
      children: [
        Container(
          height: height,
          width: maxWidth,
          decoration: BoxDecoration(
            border: Border.all(
                color: context.tertiary.withValues(alpha: 0.3), width: 0.5),
            borderRadius: borderRadius ?? BorderRadius.circular(8),
            color: context.tertiaryContainer.withValues(alpha: 0.1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                _getFileIcon(fileExtension),
                size: 40,
                color: context.tertiary,
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  fileName,
                  style: context.labelSmallW(500).copyWith(
                        color: context.onTertiaryContainer,
                      ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '${(_getFileSize(selectedFile!) / 1024).toStringAsFixed(1)} KB',
                style: context.labelSmall().copyWith(
                      color: context.tertiary,
                    ),
              ),
            ],
          ),
        ),
        if (onDelete != null) _buildDeleteButton(context),
      ],
    );
  }

  Widget _buildNetworkFileWidget(BuildContext context, double maxWidth) {
    final fileName = networkFileUrl!.split('/').last;
    final fileExtension = fileName.split('.').last.toLowerCase();

    return Stack(
      children: [
        Container(
          height: height,
          width: maxWidth,
          decoration: BoxDecoration(
            border: Border.all(
                color: context.secondary.withValues(alpha: 0.3), width: 0.5),
            borderRadius: borderRadius ?? BorderRadius.circular(8),
            color: context.secondaryContainer.withValues(alpha: 0.1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                _getFileIcon(fileExtension),
                size: 40,
                color: context.secondary,
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  fileName,
                  style: context.labelSmallW(500).copyWith(
                        color: context.onSecondaryContainer,
                      ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Uploaded File',
                style: context.labelSmall().copyWith(
                      color: context.secondary,
                    ),
              ),
            ],
          ),
        ),
        if (onDelete != null) _buildDeleteButton(context),
      ],
    );
  }

  Widget _buildPlaceholderWidget(BuildContext context, double maxWidth) {
    return Container(
      height: height,
      width: maxWidth,
      decoration: BoxDecoration(
        border: Border.all(
            color: context.outline.withValues(alpha: 0.5), width: 0.5),
        borderRadius: borderRadius ?? BorderRadius.circular(8),
        color: Colors.transparent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.upload_file_outlined,
            size: 40,
            color: context.onSurface.withValues(alpha: 0.6),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              feature.hint(fieldKey),
              style: context.bodyMedium().copyWith(
                    color: context.onSurface.withValues(alpha: 0.6),
                  ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDeleteButton(BuildContext context) {
    return Positioned(
      top: 8,
      right: 8,
      child: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: context.surface.withValues(alpha: 0.95),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: context.outline.withValues(alpha: 0.3),
            width: 0.5,
          ),
          boxShadow: [
            BoxShadow(
              color: context.shadow.withValues(alpha: 0.1),
              blurRadius: 4,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(14),
            onTap: onDelete,
            child: Icon(
              Icons.close,
              color: context.onSurface.withValues(alpha: 0.7),
              size: 16,
            ),
          ),
        ),
      ),
    );
  }

  IconData _getFileIcon(String extension) {
    switch (extension.toLowerCase()) {
      case 'pdf':
        return Icons.picture_as_pdf;
      case 'doc':
      case 'docx':
        return Icons.description;
      case 'xls':
      case 'xlsx':
        return Icons.table_chart;
      case 'ppt':
      case 'pptx':
        return Icons.slideshow;
      case 'txt':
        return Icons.text_snippet;
      default:
        return Icons.insert_drive_file;
    }
  }

  int _getFileSize(File file) {
    try {
      return file.lengthSync();
    } catch (e) {
      return 0;
    }
  }
}
