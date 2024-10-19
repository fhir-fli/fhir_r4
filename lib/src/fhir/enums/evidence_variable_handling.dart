// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The handling of the variable in statistical analysis for exposures or outcomes (E.g. Dichotomous, Continuous, Descriptive).
@collection
class EvidenceVariableHandling {
  /// Constructor for internal use (like enum)
  EvidenceVariableHandling({this.fhirCode, this.element})
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

  /// EvidenceVariableHandling values
  /// continuous
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceVariableHandling continuous = EvidenceVariableHandling(
    fhirCode: 'continuous',
  );

  /// dichotomous
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceVariableHandling dichotomous = EvidenceVariableHandling(
    fhirCode: 'dichotomous',
  );

  /// ordinal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceVariableHandling ordinal = EvidenceVariableHandling(
    fhirCode: 'ordinal',
  );

  /// polychotomous
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceVariableHandling polychotomous =
      EvidenceVariableHandling(
    fhirCode: 'polychotomous',
  );

  /// For instances where an Element is present but not value

  static final EvidenceVariableHandling elementOnly =
      EvidenceVariableHandling();

  /// List of all enum-like values
  static final List<EvidenceVariableHandling> values = [
    continuous,
    dichotomous,
    ordinal,
    polychotomous,
  ];

  /// Returns the enum value with an element attached
  EvidenceVariableHandling withElement(Element? newElement) {
    return EvidenceVariableHandling(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EvidenceVariableHandling] from JSON.
  static EvidenceVariableHandling fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceVariableHandling.elementOnly.withElement(element);
    }
    return EvidenceVariableHandling.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EvidenceVariableHandling.$fhirCode';
}
