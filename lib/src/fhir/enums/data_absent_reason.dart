// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Used to specify why the normally expected content of the data element is missing.
@collection
class DataAbsentReason {
  /// Constructor for internal use (like enum)
  DataAbsentReason({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DataAbsentReason values
  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DataAbsentReason unknown = DataAbsentReason(
    fhirCode: 'unknown',
  );

  /// asked_unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DataAbsentReason asked_unknown = DataAbsentReason(
    fhirCode: 'asked-unknown',
  );

  /// temp_unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DataAbsentReason temp_unknown = DataAbsentReason(
    fhirCode: 'temp-unknown',
  );

  /// not_asked
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DataAbsentReason not_asked = DataAbsentReason(
    fhirCode: 'not-asked',
  );

  /// asked_declined
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DataAbsentReason asked_declined = DataAbsentReason(
    fhirCode: 'asked-declined',
  );

  /// masked
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DataAbsentReason masked = DataAbsentReason(
    fhirCode: 'masked',
  );

  /// not_applicable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DataAbsentReason not_applicable = DataAbsentReason(
    fhirCode: 'not-applicable',
  );

  /// unsupported
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DataAbsentReason unsupported = DataAbsentReason(
    fhirCode: 'unsupported',
  );

  /// as_text
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DataAbsentReason as_text = DataAbsentReason(
    fhirCode: 'as-text',
  );

  /// error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DataAbsentReason error = DataAbsentReason(
    fhirCode: 'error',
  );

  /// not_a_number
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DataAbsentReason not_a_number = DataAbsentReason(
    fhirCode: 'not-a-number',
  );

  /// negative_infinity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DataAbsentReason negative_infinity = DataAbsentReason(
    fhirCode: 'negative-infinity',
  );

  /// positive_infinity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DataAbsentReason positive_infinity = DataAbsentReason(
    fhirCode: 'positive-infinity',
  );

  /// not_performed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DataAbsentReason not_performed = DataAbsentReason(
    fhirCode: 'not-performed',
  );

  /// not_permitted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DataAbsentReason not_permitted = DataAbsentReason(
    fhirCode: 'not-permitted',
  );

  /// For instances where an Element is present but not value

  static final DataAbsentReason elementOnly = DataAbsentReason();

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
    return DataAbsentReason(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DataAbsentReason] from JSON.
  static DataAbsentReason fromJson(Map<String, dynamic> json) {
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DataAbsentReason.$fhirCode';
}
