// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Used to specify why the normally expected content of the data element is missing.
enum DataAbsentReason {
  /// Display: Unknown
  /// Definition: The value is expected to exist but is not known.
  unknown('unknown'),

  /// Display: Asked But Unknown
  /// Definition: The source was asked but does not know the value.
  asked_unknown('asked-unknown'),

  /// Display: Temporarily Unknown
  /// Definition: There is reason to expect (from the workflow) that the value may become known.
  temp_unknown('temp-unknown'),

  /// Display: Not Asked
  /// Definition: The workflow didn't lead to this value being known.
  not_asked('not-asked'),

  /// Display: Asked But Declined
  /// Definition: The source was asked but declined to answer.
  asked_declined('asked-declined'),

  /// Display: Masked
  /// Definition: The information is not available due to security, privacy or related reasons.
  masked('masked'),

  /// Display: Not Applicable
  /// Definition: There is no proper value for this element (e.g. last menstrual period for a male).
  not_applicable('not-applicable'),

  /// Display: Unsupported
  /// Definition: The source system wasn't capable of supporting this element.
  unsupported('unsupported'),

  /// Display: As Text
  /// Definition: The content of the data is represented in the resource narrative.
  as_text('as-text'),

  /// Display: Error
  /// Definition: Some system or workflow process error means that the information is not available.
  error('error'),

  /// Display: Not a Number (NaN)
  /// Definition: The numeric value is undefined or unrepresentable due to a floating point processing error.
  not_a_number('not-a-number'),

  /// Display: Negative Infinity (NINF)
  /// Definition: The numeric value is excessively low and unrepresentable due to a floating point processing error.
  negative_infinity('negative-infinity'),

  /// Display: Positive Infinity (PINF)
  /// Definition: The numeric value is excessively high and unrepresentable due to a floating point processing error.
  positive_infinity('positive-infinity'),

  /// Display: Not Performed
  /// Definition: The value is not available because the observation procedure (test, etc.) was not performed.
  not_performed('not-performed'),

  /// Display: Not Permitted
  /// Definition: The value is not permitted in this context (e.g. due to profiles, or the base data types).
  not_permitted('not-permitted'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const DataAbsentReason(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [DataAbsentReason] instances.
  static DataAbsentReason fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DataAbsentReason.elementOnly.withElement(element);
    }
    return DataAbsentReason.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  DataAbsentReason withElement(Element? newElement) {
    return DataAbsentReason.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
