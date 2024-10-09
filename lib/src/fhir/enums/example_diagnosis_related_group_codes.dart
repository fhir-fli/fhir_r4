import 'package:json_annotation/json_annotation.dart';

/// This value set includes example Diagnosis Related Group codes.
enum ExampleDiagnosisRelatedGroupCodes {
  /// Display: Normal Vaginal Delivery
  /// Definition: Normal Vaginal Delivery.
  @JsonValue('100')
  value100,

  /// Display: Appendectomy - uncomplicated
  /// Definition: Appendectomy without rupture or other complications.
  @JsonValue('101')
  value101,

  /// Display: Tooth abscess
  /// Definition: Emergency department treatment of a tooth abscess.
  @JsonValue('300')
  value300,

  /// Display: Head trauma - concussion
  /// Definition: Head trauma - concussion.
  @JsonValue('400')
  value400,
  ;

  @override
  String toString() {
    switch (this) {
      case value100:
        return '100';
      case value101:
        return '101';
      case value300:
        return '300';
      case value400:
        return '400';
    }
  }

  String toJson() => toString();
  static ExampleDiagnosisRelatedGroupCodes fromString(String str) {
    switch (str) {
      case '100':
        return ExampleDiagnosisRelatedGroupCodes.value100;
      case '101':
        return ExampleDiagnosisRelatedGroupCodes.value101;
      case '300':
        return ExampleDiagnosisRelatedGroupCodes.value300;
      case '400':
        return ExampleDiagnosisRelatedGroupCodes.value400;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ExampleDiagnosisRelatedGroupCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
