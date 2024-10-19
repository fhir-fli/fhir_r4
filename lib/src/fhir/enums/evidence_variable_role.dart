// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The role that the assertion variable plays.
@collection
class EvidenceVariableRole {
  /// Constructor for internal use (like enum)
  EvidenceVariableRole({this.fhirCode, this.element})
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

  /// EvidenceVariableRole values
  /// population
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceVariableRole population = EvidenceVariableRole(
    fhirCode: 'population',
  );

  /// subpopulation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceVariableRole subpopulation = EvidenceVariableRole(
    fhirCode: 'subpopulation',
  );

  /// exposure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceVariableRole exposure = EvidenceVariableRole(
    fhirCode: 'exposure',
  );

  /// referenceExposure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceVariableRole referenceExposure = EvidenceVariableRole(
    fhirCode: 'referenceExposure',
  );

  /// measuredVariable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceVariableRole measuredVariable = EvidenceVariableRole(
    fhirCode: 'measuredVariable',
  );

  /// confounder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceVariableRole confounder = EvidenceVariableRole(
    fhirCode: 'confounder',
  );

  /// For instances where an Element is present but not value

  static final EvidenceVariableRole elementOnly = EvidenceVariableRole();

  /// List of all enum-like values
  static final List<EvidenceVariableRole> values = [
    population,
    subpopulation,
    exposure,
    referenceExposure,
    measuredVariable,
    confounder,
  ];

  /// Returns the enum value with an element attached
  EvidenceVariableRole withElement(Element? newElement) {
    return EvidenceVariableRole(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EvidenceVariableRole] from JSON.
  static EvidenceVariableRole fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceVariableRole.elementOnly.withElement(element);
    }
    return EvidenceVariableRole.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EvidenceVariableRole.$fhirCode';
}
