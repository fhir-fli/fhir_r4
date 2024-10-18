// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Preferred value set for Condition/Diagnosis severity grading.
enum ConditionDiagnosisSeverity {
  /// Display:
  /// Definition:
  value24484000('24484000'),

  /// Display:
  /// Definition:
  value6736007('6736007'),

  /// Display:
  /// Definition:
  value255604002('255604002'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ConditionDiagnosisSeverity(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ConditionDiagnosisSeverity] instances.
  static ConditionDiagnosisSeverity fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  ConditionDiagnosisSeverity withElement(Element? newElement) {
    return ConditionDiagnosisSeverity.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
