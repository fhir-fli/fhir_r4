// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Preferred value set for Condition Clinical Status.
enum ConditionClinicalStatusCodes {
  /// Display: Active
  /// Definition: The subject is currently experiencing the symptoms of the condition or there is evidence of the condition.
  active('active'),

  /// Display: Recurrence
  /// Definition: The subject is experiencing a re-occurence or repeating of a previously resolved condition, e.g. urinary tract infection, pancreatitis, cholangitis, conjunctivitis.
  recurrence('recurrence'),

  /// Display: Relapse
  /// Definition: The subject is experiencing a return of a condition, or signs and symptoms after a period of improvement or remission, e.g. relapse of cancer, multiple sclerosis, rheumatoid arthritis, systemic lupus erythematosus, bipolar disorder, [psychotic relapse of] schizophrenia, etc.
  relapse('relapse'),

  /// Display: Inactive
  /// Definition: The subject is no longer experiencing the symptoms of the condition or there is no longer evidence of the condition.
  inactive('inactive'),

  /// Display: Remission
  /// Definition: The subject is no longer experiencing the symptoms of the condition, but there is a risk of the symptoms returning.
  remission('remission'),

  /// Display: Resolved
  /// Definition: The subject is no longer experiencing the symptoms of the condition and there is a negligible perceived risk of the symptoms returning.
  resolved('resolved'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ConditionClinicalStatusCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ConditionClinicalStatusCodes] instances.
  static ConditionClinicalStatusCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionClinicalStatusCodes.elementOnly.withElement(
        element,
      );
    }
    return ConditionClinicalStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ConditionClinicalStatusCodes withElement(Element? newElement) {
    return ConditionClinicalStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
