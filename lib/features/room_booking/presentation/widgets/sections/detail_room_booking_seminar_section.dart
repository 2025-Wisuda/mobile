import 'package:flutter/material.dart';
import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/shared/enums/snackbar_type_enum.dart' show SnackbarType;
import 'package:mobile/shared/extensions/extension.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailRoomBookingSeminarSection extends StatefulWidget {
  final RoomBookingEntity booking;

  const DetailRoomBookingSeminarSection({
    super.key,
    required this.booking,
  });

  @override
  State<DetailRoomBookingSeminarSection> createState() =>
      _DetailRoomBookingSeminarSectionState();
}

class _DetailRoomBookingSeminarSectionState
    extends State<DetailRoomBookingSeminarSection> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildExpandableHeader(context),
        _buildExpandableContent(context),
      ],
    );
  }

  Widget _buildExpandableHeader(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => setState(() => _isExpanded = !_isExpanded),
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: _isExpanded
                ? context.primary.withValues(alpha: 0.1)
                : context.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: _isExpanded
                  ? context.primary.withValues(alpha: 0.3)
                  : context.onSurface.withValues(alpha: 0.2),
              width: 1.5,
            ),
          ),
          child: Row(
            children: [
              Icon(
                Icons.school_outlined,
                size: 22,
                color: _isExpanded
                    ? context.primary
                    : context.onSurface.withValues(alpha: 0.8),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  _isExpanded
                      ? 'roomBooking'.message('hideSeminarDetails')
                      : 'roomBooking'.message('showSeminarDetails'),
                  style: context.bodyLargeW(500).copyWith(
                        color:
                            _isExpanded ? context.primary : context.onSurface,
                      ),
                ),
              ),
              Icon(
                _isExpanded ? Icons.expand_less : Icons.expand_more,
                color: _isExpanded
                    ? context.primary
                    : context.onSurface.withValues(alpha: 0.7),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExpandableContent(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: const SizedBox.shrink(),
      secondChild: Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: context.surface.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: context.onSurface.withValues(alpha: 0.1),
          ),
        ),
        child: _DetailSeminarContent(booking: widget.booking),
      ),
      crossFadeState:
          _isExpanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 250),
    );
  }
}

class _DetailSeminarContent extends StatelessWidget {
  final RoomBookingEntity booking;

  const _DetailSeminarContent({required this.booking});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (booking.seminarType != null) ...[
          _buildInfoRow(context, 'roomBooking'.label('seminarType'),
              booking.seminarType ?? 'roomBooking'.message('notAvailable')),
          const SizedBox(height: 8),
        ],
        if (booking.researchTitle != null) ...[
          _buildInfoRow(context, 'roomBooking'.label('researchTitle'),
              booking.researchTitle ?? 'roomBooking'.message('notAvailable')),
          const SizedBox(height: 8),
        ],
        if (booking.supervisorMain != null) ...[
          _buildInfoRow(context, 'roomBooking'.label('supervisorMain'),
              booking.supervisorMain ?? 'roomBooking'.message('notAvailable')),
          const SizedBox(height: 8),
        ],
        if (booking.supervisorSecondary != null) ...[
          _buildInfoRow(
              context,
              'roomBooking'.label('supervisorSecondary'),
              booking.supervisorSecondary ??
                  'roomBooking'.message('notAvailable')),
          const SizedBox(height: 8),
        ],
        if (booking.examiner != null) ...[
          _buildInfoRow(context, 'roomBooking'.label('examiner'),
              booking.examiner ?? 'roomBooking'.message('notAvailable')),
        ],
        if (booking.documentProof != null &&
            booking.documentProof!.isNotEmpty) ...[
          const SizedBox(height: 16),
          Divider(color: context.outline.withValues(alpha: 0.3)),
          const SizedBox(height: 16),
          Row(
            children: [
              Icon(
                Icons.description,
                size: 20,
                color: context.primary,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'roomBooking'.label('documentProof'),
                      style: context.titleMediumW(600).copyWith(
                            color: context.primary,
                          ),
                    ),
                    Text(
                      'roomBooking'.message('documentProofDescription'),
                      style: context.labelSmall().copyWith(
                            color: context.onSurface.withValues(alpha: 0.6),
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ElevatedButton.icon(
            icon: const Icon(Icons.picture_as_pdf, size: 18),
            label: Text(
              'roomBooking'.message('viewDocument'),
              style: context.labelLargeW(500).copyWith(color: context.surface),
            ),
            onPressed: () => _openDocument(context, booking.documentProof!),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              backgroundColor: context.primary,
              foregroundColor: context.surface,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildInfoRow(BuildContext context, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 150,
          child: Text(label,
              style: context
                  .bodyMediumW(500)
                  .copyWith(color: context.onSurface.withValues(alpha: 0.7))),
        ),
        Text(' : ', style: context.bodyMediumW(500)),
        Expanded(child: Text(value, style: context.bodyMediumW(400))),
      ],
    );
  }

  Future<void> _openDocument(BuildContext context, String url) async {
    try {
      if (url.isEmpty) {
        context.showCustomSnackbar(
            message: 'roomBooking'.message('documentProofEmpty'),
            type: SnackbarType.error);
        return;
      }

      context.showCustomSnackbar(
          message: 'roomBooking'.message('openingDocument'),
          type: SnackbarType.info);

      if (url.startsWith('file://')) {
        final uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        } else {
          try {
            await launchUrl(uri);
          } catch (e) {
            if (context.mounted) {
              context.showCustomSnackbar(
                  message: 'roomBooking'.message('failedToOpenDocument'),
                  type: SnackbarType.error);
            }
          }
        }
        return;
      }

      String normalizedUrl = url.trim();
      if (!normalizedUrl.startsWith('http://') &&
          !normalizedUrl.startsWith('https://')) {
        normalizedUrl = 'https://$normalizedUrl';
      }

      final uri = Uri.parse(normalizedUrl);

      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        await launchUrl(uri);
      }
    } catch (e) {
      try {
        if (url.startsWith('file://')) {
          final uri = Uri.parse(url);
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        } else {
          String normalizedUrl = url.trim();
          if (!normalizedUrl.startsWith('http://') &&
              !normalizedUrl.startsWith('https://')) {
            normalizedUrl = 'https://$normalizedUrl';
          }
          final uri = Uri.parse(normalizedUrl);
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        }
      } catch (e2) {
        if (context.mounted) {
          context.showCustomSnackbar(
              message: 'roomBooking'.message('failedToOpenDocument'),
              type: SnackbarType.error);
        }
      }
    }
  }
}
