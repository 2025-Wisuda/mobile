import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/features/duty/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/errors/error.dart';

class ManualOverrideAttendanceController extends GetBaseFormController<
    ManualOverrideRequestEntity, DutyAttendanceEntity> {
  final ManualOverrideAttendanceUsecase _manualOverrideAttendanceUsecase;

  ManualOverrideAttendanceController(this._manualOverrideAttendanceUsecase);

  final RxnString _attendanceId = RxnString();
  final RxnString _actionType = RxnString();

  @override
  void onInit() {
    initializeControllers(['actionType']);
    _loadArguments();
    super.onInit();
  }

  void _loadArguments() {
    final arguments = Get.arguments as Map<String, dynamic>?;
    if (arguments != null) {
      _attendanceId.value = arguments['attendanceId'] as String?;
      _actionType.value = arguments['actionType'] as String?;

      if (_actionType.value != null) {
        setControllerValue('actionType', _actionType.value!);
      }
    }
  }

  @override
  String get baseStateKey => 'manualOverrideAttendance';

  @override
  FormMode get mode => FormMode.update;

  @override
  List<String> get requiredFields => ['actionType'];

  @override
  Future<Either<Failure, DutyAttendanceEntity>> executeUsecase(
      ManualOverrideRequestEntity entity) async {
    return await _manualOverrideAttendanceUsecase.execute(
      attendanceId: entity.attendanceId,
      action: entity.action,
    );
  }

  @override
  ManualOverrideRequestEntity buildEntity() {
    String action = _actionType.value ?? 'clock_in';
    if (action == 'clockIn') {
      action = 'clock_in';
    } else if (action == 'clockOut') {
      action = 'clock_out';
    }

    return ManualOverrideRequestEntity(
      attendanceId: _attendanceId.value!,
      action: action,
    );
  }

  String? get attendanceId => _attendanceId.value;
  String? get actionType => _actionType.value;

  void setAttendanceId(String attendanceId) {
    _attendanceId.value = attendanceId;
  }

  void setActionType(String actionType) {
    _actionType.value = actionType;
    setControllerValue('actionType', actionType);
  }
}
