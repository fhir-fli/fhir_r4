import 'package:json_annotation/json_annotation.dart';

/// Used to specify why the normally expected content of the data element is missing.
enum DataAbsentReason {
  /// Display: Unknown
  /// Definition: The value is expected to exist but is not known.
  @JsonValue('unknown')
  unknown,

  /// Display: Masked
  /// Definition: The information is not available due to security, privacy or related reasons.
  @JsonValue('masked')
  masked,

  /// Display: Not Applicable
  /// Definition: There is no proper value for this element (e.g. last menstrual period for a male).
  @JsonValue('not-applicable')
  not_applicable,

  /// Display: Unsupported
  /// Definition: The source system wasn't capable of supporting this element.
  @JsonValue('unsupported')
  unsupported,

  /// Display: As Text
  /// Definition: The content of the data is represented in the resource narrative.
  @JsonValue('as-text')
  as_text,

  /// Display: Error
  /// Definition: Some system or workflow process error means that the information is not available.
  @JsonValue('error')
  error,

  /// Display: Not Performed
  /// Definition: The value is not available because the observation procedure (test, etc.) was not performed.
  @JsonValue('not-performed')
  not_performed,

  /// Display: Not Permitted
  /// Definition: The value is not permitted in this context (e.g. due to profiles, or the base data types).
  @JsonValue('not-permitted')
  not_permitted,
  ;

  @override
  String toString() {
    switch (this) {
      case unknown:
        return 'unknown';
      case masked:
        return 'masked';
      case not_applicable:
        return 'not-applicable';
      case unsupported:
        return 'unsupported';
      case as_text:
        return 'as-text';
      case error:
        return 'error';
      case not_performed:
        return 'not-performed';
      case not_permitted:
        return 'not-permitted';
    }
  }

  String toJson() => toString();
  DataAbsentReason fromString(String str) {
    switch (str) {
      case 'unknown':
        return DataAbsentReason.unknown;
      case 'masked':
        return DataAbsentReason.masked;
      case 'not-applicable':
        return DataAbsentReason.not_applicable;
      case 'unsupported':
        return DataAbsentReason.unsupported;
      case 'as-text':
        return DataAbsentReason.as_text;
      case 'error':
        return DataAbsentReason.error;
      case 'not-performed':
        return DataAbsentReason.not_performed;
      case 'not-permitted':
        return DataAbsentReason.not_permitted;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  DataAbsentReason fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
