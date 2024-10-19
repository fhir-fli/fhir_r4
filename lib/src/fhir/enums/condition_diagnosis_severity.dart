// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Preferred value set for Condition/Diagnosis severity grading.
@collection
class ConditionDiagnosisSeverity {
  /// Constructor for internal use (like enum)
  ConditionDiagnosisSeverity({this.fhirCode, this.element})
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

  /// ConditionDiagnosisSeverity values
  /// value24484000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionDiagnosisSeverity value24484000 =
      ConditionDiagnosisSeverity(
    fhirCode: '24484000',
  );

  /// value6736007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionDiagnosisSeverity value6736007 =
      ConditionDiagnosisSeverity(
    fhirCode: '6736007',
  );

  /// value255604002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionDiagnosisSeverity value255604002 =
      ConditionDiagnosisSeverity(
    fhirCode: '255604002',
  );

  /// For instances where an Element is present but not value

  static final ConditionDiagnosisSeverity elementOnly =
      ConditionDiagnosisSeverity();

  /// List of all enum-like values
  static final List<ConditionDiagnosisSeverity> values = [
    value24484000,
    value6736007,
    value255604002,
  ];

  /// Returns the enum value with an element attached
  ConditionDiagnosisSeverity withElement(Element? newElement) {
    return ConditionDiagnosisSeverity(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return ConditionDiagnosisSeverity.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConditionDiagnosisSeverity.$fhirCode';
}
