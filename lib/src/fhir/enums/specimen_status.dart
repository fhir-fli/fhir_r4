import 'package:json_annotation/json_annotation.dart';

/// Codes providing the status/availability of a specimen.
enum SpecimenStatus {
  /// Display: Available
  /// Definition: The physical specimen is present and in good condition.
  @JsonValue('available')
  available,

  /// Display: Unavailable
  /// Definition: There is no physical specimen because it is either lost, destroyed or consumed.
  @JsonValue('unavailable')
  unavailable,

  /// Display: Unsatisfactory
  /// Definition: The specimen cannot be used because of a quality issue such as a broken container, contamination, or too old.
  @JsonValue('unsatisfactory')
  unsatisfactory,

  /// Display: Entered in Error
  /// Definition: The specimen was entered in error and therefore nullified.
  @JsonValue('entered-in-error')
  entered_in_error,
  ;

  @override
  String toString() {
    switch (this) {
      case available:
        return 'available';
      case unavailable:
        return 'unavailable';
      case unsatisfactory:
        return 'unsatisfactory';
      case entered_in_error:
        return 'entered-in-error';
    }
  }

  String toJson() => toString();
  SpecimenStatus fromString(String str) {
    switch (str) {
      case 'available':
        return SpecimenStatus.available;
      case 'unavailable':
        return SpecimenStatus.unavailable;
      case 'unsatisfactory':
        return SpecimenStatus.unsatisfactory;
      case 'entered-in-error':
        return SpecimenStatus.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  SpecimenStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
