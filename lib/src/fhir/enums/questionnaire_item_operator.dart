// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The criteria by which a question is enabled.
enum QuestionnaireItemOperator {
  /// Display: Exists
  /// Definition: True if whether an answer exists is equal to the enableWhen answer (which must be a boolean).
  exists('exists'),

  /// Display: Equals
  /// Definition: True if whether at least one answer has a value that is equal to the enableWhen answer.
  eq('='),

  /// Display: Not Equals
  /// Definition: True if whether at least no answer has a value that is equal to the enableWhen answer.
  ne('!='),

  /// Display: Greater Than
  /// Definition: True if whether at least no answer has a value that is greater than the enableWhen answer.
  gt('>'),

  /// Display: Less Than
  /// Definition: True if whether at least no answer has a value that is less than the enableWhen answer.
  lt('<'),

  /// Display: Greater or Equals
  /// Definition: True if whether at least no answer has a value that is greater or equal to the enableWhen answer.
  ge('>='),

  /// Display: Less or Equals
  /// Definition: True if whether at least no answer has a value that is less or equal to the enableWhen answer.
  le('<='),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const QuestionnaireItemOperator(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [QuestionnaireItemOperator] instances.
  static QuestionnaireItemOperator fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireItemOperator.elementOnly.withElement(
        element,
      );
    }
    return QuestionnaireItemOperator.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  QuestionnaireItemOperator withElement(Element? newElement) {
    return QuestionnaireItemOperator.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
