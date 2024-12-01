// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set is provided as an example. The value set to instantiate this attribute should be drawn from a robust terminology code system that consists of or contains concepts to support the medication process.
class ReasonMedicationGivenCodes {
  // Private constructor for internal use (like enum)
  ReasonMedicationGivenCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [ReasonMedicationGivenCodes] from JSON.
  factory ReasonMedicationGivenCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReasonMedicationGivenCodes.elementOnly.withElement(element);
    }
    return ReasonMedicationGivenCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ReasonMedicationGivenCodes values
  /// a
  static final ReasonMedicationGivenCodes a = ReasonMedicationGivenCodes._(
    'a',
  );

  /// b
  static final ReasonMedicationGivenCodes b = ReasonMedicationGivenCodes._(
    'b',
  );

  /// c
  static final ReasonMedicationGivenCodes c = ReasonMedicationGivenCodes._(
    'c',
  );

  /// For instances where an Element is present but not value

  static final ReasonMedicationGivenCodes elementOnly =
      ReasonMedicationGivenCodes._('');

  /// List of all enum-like values
  static final List<ReasonMedicationGivenCodes> values = [
    a,
    b,
    c,
  ];

  /// Returns the enum value with an element attached
  ReasonMedicationGivenCodes withElement(Element? newElement) {
    return ReasonMedicationGivenCodes._(fhirCode, element: newElement);
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
