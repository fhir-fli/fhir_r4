// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Provides examples of reasons for actions to be performed.
@collection
class ActionReasonCode {
  /// Constructor for internal use (like enum)
  ActionReasonCode({this.fhirCode, this.element})
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

  /// ActionReasonCode values
  /// off_pathway
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionReasonCode off_pathway = ActionReasonCode(
    fhirCode: 'off-pathway',
  );

  /// risk_assessment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionReasonCode risk_assessment = ActionReasonCode(
    fhirCode: 'risk-assessment',
  );

  /// care_gap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionReasonCode care_gap = ActionReasonCode(
    fhirCode: 'care-gap',
  );

  /// drug_drug_interaction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionReasonCode drug_drug_interaction = ActionReasonCode(
    fhirCode: 'drug-drug-interaction',
  );

  /// quality_measure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ActionReasonCode quality_measure = ActionReasonCode(
    fhirCode: 'quality-measure',
  );

  /// For instances where an Element is present but not value

  static final ActionReasonCode elementOnly = ActionReasonCode();

  /// List of all enum-like values
  static final List<ActionReasonCode> values = [
    off_pathway,
    risk_assessment,
    care_gap,
    drug_drug_interaction,
    quality_measure,
  ];

  /// Returns the enum value with an element attached
  ActionReasonCode withElement(Element? newElement) {
    return ActionReasonCode(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ActionReasonCode] from JSON.
  static ActionReasonCode fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionReasonCode.elementOnly.withElement(element);
    }
    return ActionReasonCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ActionReasonCode.$fhirCode';
}
