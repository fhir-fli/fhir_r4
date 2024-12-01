// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The criteria by which a question is enabled.
class QuestionnaireItemOperator {
  // Private constructor for internal use (like enum)
  QuestionnaireItemOperator._(this.fhirCode, {this.element});

  /// Factory constructor to create [QuestionnaireItemOperator] from JSON.
  factory QuestionnaireItemOperator.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireItemOperator.elementOnly.withElement(element);
    }
    return QuestionnaireItemOperator._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// QuestionnaireItemOperator values
  /// exists
  static final QuestionnaireItemOperator exists = QuestionnaireItemOperator._(
    'exists',
  );

  /// eq
  static final QuestionnaireItemOperator eq = QuestionnaireItemOperator._(
    '=',
  );

  /// ne
  static final QuestionnaireItemOperator ne = QuestionnaireItemOperator._(
    '!=',
  );

  /// gt
  static final QuestionnaireItemOperator gt = QuestionnaireItemOperator._(
    '>',
  );

  /// lt
  static final QuestionnaireItemOperator lt = QuestionnaireItemOperator._(
    '<',
  );

  /// ge
  static final QuestionnaireItemOperator ge = QuestionnaireItemOperator._(
    '>=',
  );

  /// le
  static final QuestionnaireItemOperator le = QuestionnaireItemOperator._(
    '<=',
  );

  /// For instances where an Element is present but not value

  static final QuestionnaireItemOperator elementOnly =
      QuestionnaireItemOperator._('');

  /// List of all enum-like values
  static final List<QuestionnaireItemOperator> values = [
    exists,
    eq,
    ne,
    gt,
    lt,
    ge,
    le,
  ];

  /// Returns the enum value with an element attached
  QuestionnaireItemOperator withElement(Element? newElement) {
    return QuestionnaireItemOperator._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
