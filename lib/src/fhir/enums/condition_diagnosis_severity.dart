// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Preferred value set for Condition/Diagnosis severity grading.
class ConditionDiagnosisSeverity {
  // Private constructor for internal use (like enum)
  ConditionDiagnosisSeverity._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ConditionDiagnosisSeverity values
  /// value24484000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionDiagnosisSeverity value24484000 =
      ConditionDiagnosisSeverity._(
    '24484000',
  );

  /// value6736007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionDiagnosisSeverity value6736007 =
      ConditionDiagnosisSeverity._(
    '6736007',
  );

  /// value255604002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionDiagnosisSeverity value255604002 =
      ConditionDiagnosisSeverity._(
    '255604002',
  );

  /// For instances where an Element is present but not value

  static final ConditionDiagnosisSeverity elementOnly =
      ConditionDiagnosisSeverity._('');

  /// List of all enum-like values
  static final List<ConditionDiagnosisSeverity> values = [
    value24484000,
    value6736007,
    value255604002,
  ];

  /// Returns the enum value with an element attached
  ConditionDiagnosisSeverity withElement(Element? newElement) {
    return ConditionDiagnosisSeverity._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ConditionDiagnosisSeverity] from JSON.
  static ConditionDiagnosisSeverity fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionDiagnosisSeverity.elementOnly.withElement(element);
    }
    return ConditionDiagnosisSeverity._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
