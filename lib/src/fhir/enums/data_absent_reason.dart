import 'package:json_annotation/json_annotation.dart';

/// Used to specify why the normally expected content of the data element is missing.
enum DataAbsentReason {
  /// Display: Unknown
  /// Definition: The value is expected to exist but is not known.
  @JsonValue('unknown')
  unknown,

  /// Display: Asked But Unknown
  /// Definition: The source was asked but does not know the value.
  @JsonValue('asked-unknown')
  asked_unknown,

  /// Display: Temporarily Unknown
  /// Definition: There is reason to expect (from the workflow) that the value may become known.
  @JsonValue('temp-unknown')
  temp_unknown,

  /// Display: Not Asked
  /// Definition: The workflow didn't lead to this value being known.
  @JsonValue('not-asked')
  not_asked,

  /// Display: Asked But Declined
  /// Definition: The source was asked but declined to answer.
  @JsonValue('asked-declined')
  asked_declined,

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

  /// Display: Not a Number (NaN)
  /// Definition: The numeric value is undefined or unrepresentable due to a floating point processing error.
  @JsonValue('not-a-number')
  not_a_number,

  /// Display: Negative Infinity (NINF)
  /// Definition: The numeric value is excessively low and unrepresentable due to a floating point processing error.
  @JsonValue('negative-infinity')
  negative_infinity,

  /// Display: Positive Infinity (PINF)
  /// Definition: The numeric value is excessively high and unrepresentable due to a floating point processing error.
  @JsonValue('positive-infinity')
  positive_infinity,

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
      case asked_unknown:
        return 'asked-unknown';
      case temp_unknown:
        return 'temp-unknown';
      case not_asked:
        return 'not-asked';
      case asked_declined:
        return 'asked-declined';
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
      case not_a_number:
        return 'not-a-number';
      case negative_infinity:
        return 'negative-infinity';
      case positive_infinity:
        return 'positive-infinity';
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
      case 'asked-unknown':
        return DataAbsentReason.asked_unknown;
      case 'temp-unknown':
        return DataAbsentReason.temp_unknown;
      case 'not-asked':
        return DataAbsentReason.not_asked;
      case 'asked-declined':
        return DataAbsentReason.asked_declined;
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
      case 'not-a-number':
        return DataAbsentReason.not_a_number;
      case 'negative-infinity':
        return DataAbsentReason.negative_infinity;
      case 'positive-infinity':
        return DataAbsentReason.positive_infinity;
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
