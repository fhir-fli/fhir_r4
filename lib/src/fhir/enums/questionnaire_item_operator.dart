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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const QuestionnaireItemOperator(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static QuestionnaireItemOperator fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireItemOperator.elementOnly.withElement(element);
    }
    return QuestionnaireItemOperator.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  QuestionnaireItemOperator withElement(Element? newElement) {
    return QuestionnaireItemOperator.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
