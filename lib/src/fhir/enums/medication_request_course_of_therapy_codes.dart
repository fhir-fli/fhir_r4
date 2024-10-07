import 'package:json_annotation/json_annotation.dart';

/// MedicationRequest Course of Therapy Codes
enum MedicationRequestCourseOfTherapyCodes {
  /// Display: Continuous long term therapy
  /// Definition: A medication which is expected to be continued beyond the present order and which the patient should be assumed to be taking unless explicitly stopped.
  @JsonValue('continuous')
  continuous,
  /// Display: Short course (acute) therapy
  /// Definition: A medication which the patient is only expected to consume for the duration of the current order and which is not expected to be renewed.
  @JsonValue('acute')
  acute,
  /// Display: Seasonal
  /// Definition: A medication which is expected to be used on a part time basis at certain times of the year
  @JsonValue('seasonal')
  seasonal,
;

@override
  String toString() {
      switch(this) {
        case continuous: return 'continuous';
        case acute: return 'acute';
        case seasonal: return 'seasonal';
      }
      }
String toJson() => toString();
  MedicationRequestCourseOfTherapyCodes fromString(String str) {
    switch(str) {
      case 'continuous': return MedicationRequestCourseOfTherapyCodes.continuous;
      case 'acute': return MedicationRequestCourseOfTherapyCodes.acute;
      case 'seasonal': return MedicationRequestCourseOfTherapyCodes.seasonal;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 MedicationRequestCourseOfTherapyCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

