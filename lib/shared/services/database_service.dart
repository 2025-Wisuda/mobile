// import 'package:get/get.dart';
// import 'package:mobile/shared/databases/database.dart';

// class DatabaseService {
//   static final DatabaseService _instance = DatabaseService._internal();
//   factory DatabaseService() => _instance;
//   DatabaseService._internal();

//   UserDatabase get userDatabase => Get.find<UserDatabase>();
//   LabScheduleDatabase get labScheduleDatabase =>
//       Get.find<LabScheduleDatabase>();
//   DutyScheduleDatabase get dutyScheduleDatabase =>
//       Get.find<DutyScheduleDatabase>();

//   Future<void> clearAllDatabases() async {
//     try {
//       await userDatabase.clearUserData();

//       await labScheduleDatabase.clearLabScheduleData();

//       await dutyScheduleDatabase.clearDutyScheduleData();
//     } catch (e) {
//       rethrow;
//     }
//   }

//   Future<void> closeAllDatabases() async {
//     try {
//       await userDatabase.close();
//       await labScheduleDatabase.close();
//       await dutyScheduleDatabase.close();
//     } catch (e) {
//       rethrow;
//     }
//   }

//   Future<void> clearAndClose() async {
//     await clearAllDatabases();
//     await closeAllDatabases();
//   }
// }
