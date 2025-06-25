import 'package:easy_localization/easy_localization.dart';

enum ApprovalStatusEnum {
  pending('Menunggu', 'pending'),
  approved('Disetujui', 'approved'),
  rejected('Ditolak', 'rejected'),
  cancelled('Dibatalkan', 'cancelled'),
  completed('Selesai', 'completed'),
  expired('Kedaluwarsa', 'expired'),
  inProgress('Sedang Berlangsung', 'inProgress');

  const ApprovalStatusEnum(this.value, this.labelKey);
  final String value;
  final String labelKey;

  String getLabel() => tr('features.approval.text.$labelKey');

  static ApprovalStatusEnum? fromString(String? value) {
    if (value == null) return null;
    for (ApprovalStatusEnum status in ApprovalStatusEnum.values) {
      if (status.value == value ||
          status.labelKey == value ||
          status.name == value.toLowerCase()) {
        return status;
      }
    }
    return null;
  }

  bool get isPending => this == ApprovalStatusEnum.pending;
  bool get isApproved => this == ApprovalStatusEnum.approved;
  bool get isRejected => this == ApprovalStatusEnum.rejected;
  bool get isCancelled => this == ApprovalStatusEnum.cancelled;
  bool get isCompleted => this == ApprovalStatusEnum.completed;
  bool get isExpired => this == ApprovalStatusEnum.expired;
  bool get isInProgress => this == ApprovalStatusEnum.inProgress;

  bool get canBeApproved => isPending;

  bool get canBeDeleted => isPending;
}
