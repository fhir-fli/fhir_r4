// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Used to specify why the normally expected content of the data element is missing.
class DataAbsentReason {
  // Private constructor for internal use (like enum)
  DataAbsentReason._(this.fhirCode, {this.element});

  /// Factory constructor to create [DataAbsentReason] from JSON.
  factory DataAbsentReason.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DataAbsentReason.elementOnly.withElement(element);
    }
    return DataAbsentReason._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DataAbsentReason values
  /// unknown
  static final DataAbsentReason unknown = DataAbsentReason._(
    'unknown',
  );

  /// asked_unknown
  static final DataAbsentReason asked_unknown = DataAbsentReason._(
    'asked-unknown',
  );

  /// temp_unknown
  static final DataAbsentReason temp_unknown = DataAbsentReason._(
    'temp-unknown',
  );

  /// not_asked
  static final DataAbsentReason not_asked = DataAbsentReason._(
    'not-asked',
  );

  /// asked_declined
  static final DataAbsentReason asked_declined = DataAbsentReason._(
    'asked-declined',
  );

  /// masked
  static final DataAbsentReason masked = DataAbsentReason._(
    'masked',
  );

  /// not_applicable
  static final DataAbsentReason not_applicable = DataAbsentReason._(
    'not-applicable',
  );

  /// unsupported
  static final DataAbsentReason unsupported = DataAbsentReason._(
    'unsupported',
  );

  /// as_text
  static final DataAbsentReason as_text = DataAbsentReason._(
    'as-text',
  );

  /// error
  static final DataAbsentReason error = DataAbsentReason._(
    'error',
  );

  /// not_a_number
  static final DataAbsentReason not_a_number = DataAbsentReason._(
    'not-a-number',
  );

  /// negative_infinity
  static final DataAbsentReason negative_infinity = DataAbsentReason._(
    'negative-infinity',
  );

  /// positive_infinity
  static final DataAbsentReason positive_infinity = DataAbsentReason._(
    'positive-infinity',
  );

  /// not_performed
  static final DataAbsentReason not_performed = DataAbsentReason._(
    'not-performed',
  );

  /// not_permitted
  static final DataAbsentReason not_permitted = DataAbsentReason._(
    'not-permitted',
  );

  /// For instances where an Element is present but not value

  static final DataAbsentReason elementOnly = DataAbsentReason._('');

  /// List of all enum-like values
  static final List<DataAbsentReason> values = [
    unknown,
    asked_unknown,
    temp_unknown,
    not_asked,
    asked_declined,
    masked,
    not_applicable,
    unsupported,
    as_text,
    error,
    not_a_number,
    negative_infinity,
    positive_infinity,
    not_performed,
    not_permitted,
  ];

  /// Returns the enum value with an element attached
  DataAbsentReason withElement(Element? newElement) {
    return DataAbsentReason._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
