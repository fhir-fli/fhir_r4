// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the disease that the evaluation is against. This value set is provided as a suggestive example and includes the SNOMED CT concepts from the 64572001 (Disease) hierarchy.
class ImmunizationEvaluationTargetDiseaseCodes {
  // Private constructor for internal use (like enum)
  ImmunizationEvaluationTargetDiseaseCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ImmunizationEvaluationTargetDiseaseCodes values
  /// value1857005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationTargetDiseaseCodes value1857005 =
      ImmunizationEvaluationTargetDiseaseCodes._(
    '1857005',
  );

  /// value397430003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationTargetDiseaseCodes value397430003 =
      ImmunizationEvaluationTargetDiseaseCodes._(
    '397430003',
  );

  /// value14189004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationTargetDiseaseCodes value14189004 =
      ImmunizationEvaluationTargetDiseaseCodes._(
    '14189004',
  );

  /// value36989005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationTargetDiseaseCodes value36989005 =
      ImmunizationEvaluationTargetDiseaseCodes._(
    '36989005',
  );

  /// value36653000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationTargetDiseaseCodes value36653000 =
      ImmunizationEvaluationTargetDiseaseCodes._(
    '36653000',
  );

  /// value76902006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationTargetDiseaseCodes value76902006 =
      ImmunizationEvaluationTargetDiseaseCodes._(
    '76902006',
  );

  /// value709410003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationTargetDiseaseCodes value709410003 =
      ImmunizationEvaluationTargetDiseaseCodes._(
    '709410003',
  );

  /// value27836007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationTargetDiseaseCodes value27836007 =
      ImmunizationEvaluationTargetDiseaseCodes._(
    '27836007',
  );

  /// value398102009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationTargetDiseaseCodes value398102009 =
      ImmunizationEvaluationTargetDiseaseCodes._(
    '398102009',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationEvaluationTargetDiseaseCodes elementOnly =
      ImmunizationEvaluationTargetDiseaseCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationEvaluationTargetDiseaseCodes> values = [
    value1857005,
    value397430003,
    value14189004,
    value36989005,
    value36653000,
    value76902006,
    value709410003,
    value27836007,
    value398102009,
  ];

  /// Returns the enum value with an element attached
  ImmunizationEvaluationTargetDiseaseCodes withElement(Element? newElement) {
    return ImmunizationEvaluationTargetDiseaseCodes._(fhirCode,
        element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ImmunizationEvaluationTargetDiseaseCodes] from JSON.
  static ImmunizationEvaluationTargetDiseaseCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationEvaluationTargetDiseaseCodes.elementOnly
          .withElement(element);
    }
    return ImmunizationEvaluationTargetDiseaseCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
