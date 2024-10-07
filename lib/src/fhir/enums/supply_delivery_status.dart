import 'package:json_annotation/json_annotation.dart';

/// Status of the supply delivery.
enum SupplyDeliveryStatus {
  /// Display: In Progress
  /// Definition: Supply has been requested, but not delivered.
  @JsonValue('in-progress')
  in_progress,

  /// Display: Delivered
  /// Definition: Supply has been delivered ("completed").
  @JsonValue('completed')
  completed,

  /// Display: Abandoned
  /// Definition: Delivery was not completed.
  @JsonValue('abandoned')
  abandoned,

  /// Display: Entered In Error
  /// Definition: This electronic record should never have existed, though it is possible that real-world decisions were based on it. (If real-world activity has occurred, the status should be "abandoned" rather than "entered-in-error".).
  @JsonValue('entered-in-error')
  entered_in_error,
  ;

  @override
  String toString() {
    switch (this) {
      case in_progress:
        return 'in-progress';
      case completed:
        return 'completed';
      case abandoned:
        return 'abandoned';
      case entered_in_error:
        return 'entered-in-error';
    }
  }

  String toJson() => toString();
  SupplyDeliveryStatus fromString(String str) {
    switch (str) {
      case 'in-progress':
        return SupplyDeliveryStatus.in_progress;
      case 'completed':
        return SupplyDeliveryStatus.completed;
      case 'abandoned':
        return SupplyDeliveryStatus.abandoned;
      case 'entered-in-error':
        return SupplyDeliveryStatus.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  SupplyDeliveryStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
