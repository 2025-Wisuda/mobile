# Face Recognition Module

A reusable, real-time face recognition module built with Clean Architecture + DDD principles.

## Features

- ✅ Real-time face detection using Google ML Kit
- ✅ Smart face quality assessment
- ✅ Auto-capture when face quality is excellent
- ✅ WebSocket communication with backend
- ✅ Configurable for different attendance types
- ✅ Clean Architecture + DDD implementation
- ✅ Proper separation of concerns

## Architecture

```
domain/
├── entities/          # Business entities
├── repositories/      # Repository interfaces
├── usecases/         # Business logic
└── services/         # Domain services

data/
├── datasources/      # Data sources (WebSocket)
├── models/           # Data models
└── repositories/     # Repository implementations

presentation/
├── controllers/      # State management (GetX)
├── screens/          # UI screens
└── widgets/          # Reusable widgets
```

## Usage Examples

### 1. Duty Schedule Attendance

```dart
// Navigate to face recognition for duty schedule
Get.to(() => RealTimeFaceRecognitionScreen(
  config: FaceRecognitionConfig.dutySchedule,
  attendanceId: 'duty_123',
  actionType: 'check_in',
));

// Handle result
final result = await Get.to(() => RealTimeFaceRecognitionScreen(
  config: FaceRecognitionConfig.dutySchedule,
  attendanceId: 'duty_123',
));

if (result['success'] == true) {
  print('Attendance recorded successfully!');
}
```

### 2. Course Session Attendance

```dart
// Navigate to face recognition for course session
Get.to(() => RealTimeFaceRecognitionScreen(
  config: FaceRecognitionConfig.courseSession,
  attendanceId: 'course_456',
  actionType: 'attendance',
  additionalData: {
    'courseId': 'CS101',
    'sessionId': 'session_789',
  },
));
```

### 3. Lab Schedule Attendance

```dart
// Navigate to face recognition for lab schedule
Get.to(() => RealTimeFaceRecognitionScreen(
  config: FaceRecognitionConfig.labSchedule,
  attendanceId: 'lab_789',
  actionType: 'check_in',
));
```

### 4. Custom Configuration

```dart
// Create custom configuration
final customConfig = FaceRecognitionConfig(
  websocketUrl: 'ws://your-custom-server/ws/face-recognition/',
  attendanceType: 'custom_attendance',
  maxRetries: 5,
  timeout: Duration(seconds: 45),
  qualityCheckDelay: Duration(milliseconds: 300),
  minFaceSize: 0.2,
  excellentQualityThreshold: 0.08,
  goodQualityThreshold: 0.03,
);

// Use custom configuration
Get.to(() => RealTimeFaceRecognitionScreen(
  config: customConfig,
  attendanceId: 'custom_123',
));
```

## Configuration Options

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `websocketUrl` | String | Required | WebSocket server URL |
| `attendanceType` | String | Required | Type of attendance (duty_schedule, course_session, etc.) |
| `maxRetries` | int | 3 | Maximum retry attempts |
| `timeout` | Duration | 30s | Request timeout |
| `qualityCheckDelay` | Duration | 500ms | Delay between quality checks |
| `minFaceSize` | double | 0.15 | Minimum face size (0.0-1.0) |
| `excellentQualityThreshold` | double | 0.1 | Threshold for excellent quality |
| `goodQualityThreshold` | double | 0.05 | Threshold for good quality |

## Face Quality Levels

- **Excellent**: Face is perfectly positioned and ready for capture
- **Good**: Face is detected but needs minor adjustments
- **Poor**: Face is not properly positioned or too small

## Result Format

```dart
{
  'success': true,
  'attendanceId': 'duty_123',
  'actionType': 'check_in',
  'attendanceType': 'duty_schedule',
  'additionalData': {...},
  'recognitionResult': FaceRecognitionResponseEntity(...),
}
```

## Dependencies

- `get` - State management
- `camera` - Camera access
- `google_mlkit_face_detection` - Face detection
- `web_socket_channel` - WebSocket communication
- `image` - Image processing

## Notes

- Controller handles ONLY business logic and state management
- Screen handles ALL UI and navigation
- Widgets are reusable and configurable
- Follows Material Design 3 guidelines
- Supports both light and dark themes 