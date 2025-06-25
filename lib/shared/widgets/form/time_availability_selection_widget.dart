// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
// import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
// import 'package:mobile/shared/enums/enum.dart';
// import 'package:mobile/shared/extensions/extension.dart';
// import 'package:mobile/shared/helpers/helper.dart';
// import 'package:mobile/shared/widgets/widget.dart';

// class TimeAvailabilitySelectionWidget extends StatelessWidget {
//   final String selectedDate;
//   final String? selectedStartTime;
//   final String? selectedEndTime;
//   final Function(String) onStartTimeSelected;
//   final Function(String) onEndTimeSelected;
//   final String? controllerKey;
//   final String? startTimeLabel;
//   final String? endTimeLabel;
//   final bool isStartTimeRequired;
//   final bool isEndTimeRequired;
//   final bool isStartTimeOptional;
//   final bool isEndTimeOptional;

//   const TimeAvailabilitySelectionWidget({
//     super.key,
//     required this.selectedDate,
//     this.selectedStartTime,
//     this.selectedEndTime,
//     required this.onStartTimeSelected,
//     required this.onEndTimeSelected,
//     this.controllerKey,
//     this.startTimeLabel,
//     this.endTimeLabel,
//     this.isStartTimeRequired = true,
//     this.isEndTimeRequired = true,
//     this.isStartTimeOptional = false,
//     this.isEndTimeOptional = false,
//   });

//   LabAvailabilityController get labAvailabilityC =>
//       Get.find<LabAvailabilityController>(
//         tag: controllerKey ?? 'default',
//       );

//   @override
//   Widget build(BuildContext context) {
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       if (selectedDate.isNotEmpty) {
//         final formattedDate = DateHelper.formatIsoDate(
//           date: DateTime.parse(selectedDate),
//         );
//         labAvailabilityC.fetchAvailability(formattedDate);
//       }
//     });

//     return GetBuilder<LabAvailabilityController>(
//       init: labAvailabilityC,
//       builder: (controller) {
//         final state = controller.state;
//         final availabilitySlots = controller.items;

//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           spacing: 16,
//           children: [
//             _buildStartTimeSection(
//                 context,
//                 state,
//                 availabilitySlots,
//                 startTimeLabel ?? 'course'.label('sessionStartTime'),
//                 isStartTimeRequired,
//                 isStartTimeOptional),
//             _buildEndTimeSection(
//                 context,
//                 state,
//                 availabilitySlots,
//                 endTimeLabel ?? 'course'.label('sessionEndTime'),
//                 isEndTimeRequired,
//                 isEndTimeOptional),
//           ],
//         );
//       },
//     );
//   }

//   Widget _buildStartTimeSection(
//       BuildContext context,
//       FetchStateEnum state,
//       List<LabAvailabilityEntity> availabilitySlots,
//       String label,
//       bool isRequired,
//       bool isOptional) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       spacing: 8,
//       children: [
//         CustomFormLabelWidget(
//           label: label,
//           requiredField: isRequired,
//           optional: isOptional,
//         ),
//         _buildTimeContent(
//           context: context,
//           c: labAvailabilityC,
//           isStartTime: true,
//         ),
//       ],
//     );
//   }

//   Widget _buildEndTimeSection(
//       BuildContext context,
//       FetchStateEnum state,
//       List<LabAvailabilityEntity> availabilitySlots,
//       String label,
//       bool isRequired,
//       bool isOptional) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       spacing: 8,
//       children: [
//         CustomFormLabelWidget(
//           label: label,
//           requiredField: isRequired,
//           optional: isOptional,
//         ),
//         _buildTimeContent(
//           context: context,
//           c: labAvailabilityC,
//           isStartTime: false,
//         ),
//       ],
//     );
//   }

//   Widget _buildTimeContent({
//     required BuildContext context,
//     required LabAvailabilityController c,
//     required bool isStartTime,
//   }) {
//     if (!isStartTime && (selectedStartTime?.isEmpty != false)) {
//       return _buildInfoWidget(
//           context, 'labSchedule'.message('pleaseSelectStartTimeFirst'));
//     }
//     final state = c.state;
//     final availabilitySlots = c.items;
//     final errorMessage = c.errorMessage;

//     switch (state) {
//       case FetchStateEnum.loading:
//         return _buildLoadingWidget(context);
//       case FetchStateEnum.failure:
//         return _buildErrorWidget(isStartTime ? errorMessage : errorMessage);
//       case FetchStateEnum.empty:
//         return _buildEmptyWidget(
//             context,
//             isStartTime
//                 ? 'labSchedule'.message('noAvailableStartTimesForSelectedDate')
//                 : 'labSchedule'
//                     .message('noAvailableEndTimesForSelectedStartTime'));
//       case FetchStateEnum.success:
//         if (isStartTime) {
//           final availableStartTimes =
//               TimeSlotHelper.generateTimeSlots(availabilitySlots);
//           return _buildTimeChipsGrid(
//             timeSlots: availableStartTimes,
//             selectedTime: selectedStartTime,
//             onTimeSelected: onStartTimeSelected,
//           );
//         } else {
//           final availableEndTimes = TimeSlotHelper.getAvailableEndTimes(
//             availabilitySlots,
//             selectedStartTime!,
//           );

//           if (availableEndTimes.isEmpty) {
//             return _buildEmptyWidget(
//               context,
//               'labSchedule'.message('noAvailableTimeSlotsForSelectedDate'),
//             );
//           }

//           return _buildTimeChipsGrid(
//             timeSlots: availableEndTimes,
//             selectedTime: selectedEndTime,
//             onTimeSelected: onEndTimeSelected,
//           );
//         }
//       default:
//         return const SizedBox.shrink();
//     }
//   }

//   Widget _buildLoadingWidget(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 12),
//       child: Row(
//         children: [
//           SizedBox(
//             width: 16,
//             height: 16,
//             child: CircularProgressIndicator(strokeWidth: 2),
//           ),
//           SizedBox(width: 8),
//           Text(
//             'labSchedule'.message('loadingAvailableTimeSlots'),
//             style: context.bodyMediumW(400),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildErrorWidget(String message) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 12),
//       child: Row(
//         children: [
//           Icon(Icons.error_outline,
//               size: 16, color: Get.theme.colorScheme.error),
//           const SizedBox(width: 8),
//           Expanded(
//             child: Text(
//               message,
//               style: TextStyle(color: Get.theme.colorScheme.error),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildEmptyWidget(BuildContext context, String message) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 12),
//       child: Row(
//         children: [
//           Icon(Icons.info_outline,
//               size: 16, color: context.onSurface.withValues(alpha: 0.6)),
//           const SizedBox(width: 8),
//           Expanded(
//             child: Text(
//               message,
//               style: TextStyle(color: context.onSurface.withValues(alpha: 0.6)),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildInfoWidget(BuildContext context, String message) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 12),
//       child: Row(
//         children: [
//           Icon(Icons.schedule,
//               size: 16, color: context.onSurface.withValues(alpha: 0.6)),
//           const SizedBox(width: 8),
//           Text(
//             message,
//             style: TextStyle(color: context.onSurface.withValues(alpha: 0.6)),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildTimeChipsGrid({
//     required List<String> timeSlots,
//     required String? selectedTime,
//     required Function(String) onTimeSelected,
//   }) {
//     return Wrap(
//       spacing: 8,
//       runSpacing: 8,
//       children: timeSlots.map((time) {
//         final isSelected = selectedTime == time;
//         return _buildTimeChip(
//           time: time,
//           isSelected: isSelected,
//           onTap: () => onTimeSelected(time),
//         );
//       }).toList(),
//     );
//   }

//   Widget _buildTimeChip({
//     required String time,
//     required bool isSelected,
//     required VoidCallback onTap,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//         decoration: BoxDecoration(
//           color: isSelected
//               ? Get.theme.colorScheme.primary.withValues(alpha: 0.1)
//               : Get.theme.colorScheme.surface,
//           border: Border.all(
//             color: isSelected
//                 ? Get.theme.colorScheme.primary
//                 : Get.theme.colorScheme.outline.withValues(alpha: 0.5),
//             width: 1,
//           ),
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Text(
//           time,
//           style: Get.textTheme.bodyMedium?.copyWith(
//             fontWeight: FontWeight.w500,
//             color: isSelected
//                 ? Get.theme.colorScheme.primary
//                 : Get.theme.colorScheme.onSurface,
//           ),
//         ),
//       ),
//     );
//   }
// }
