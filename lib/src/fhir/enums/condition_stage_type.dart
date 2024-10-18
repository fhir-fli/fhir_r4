// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example value set for the type of stages of cancer and other conditions
enum ConditionStageType {
  /// Display: Pathological staging (qualifier value)
  /// Definition:
  value261023001('261023001'),

  /// Display: Clinical staging (qualifier value)
  /// Definition:
  value260998006('260998006'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ConditionStageType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ConditionStageType] instances.
  static ConditionStageType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionStageType.elementOnly.withElement(
        element,
      );
    }
    return ConditionStageType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ConditionStageType withElement(Element? newElement) {
    return ConditionStageType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
