// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The criteria by which a question is enabled.
class QuestionnaireItemOperator extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  QuestionnaireItemOperator._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [QuestionnaireItemOperator] from JSON.
  factory QuestionnaireItemOperator.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireItemOperator.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuestionnaireItemOperator cannot be constructed from JSON.',
      );
    }
    return QuestionnaireItemOperator._(value: value, element: element);
  }

  /// exists
  static final QuestionnaireItemOperator exists = QuestionnaireItemOperator._(
    value: 'exists',
  );

  /// eq
  static final QuestionnaireItemOperator eq = QuestionnaireItemOperator._(
    value: '=',
  );

  /// ne
  static final QuestionnaireItemOperator ne = QuestionnaireItemOperator._(
    value: '!=',
  );

  /// gt
  static final QuestionnaireItemOperator gt = QuestionnaireItemOperator._(
    value: '>',
  );

  /// lt
  static final QuestionnaireItemOperator lt = QuestionnaireItemOperator._(
    value: '<',
  );

  /// ge
  static final QuestionnaireItemOperator ge = QuestionnaireItemOperator._(
    value: '>=',
  );

  /// le
  static final QuestionnaireItemOperator le = QuestionnaireItemOperator._(
    value: '<=',
  );

  /// For instances where an Element is present but not value

  static final QuestionnaireItemOperator elementOnly =
      QuestionnaireItemOperator._(value: '');

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

  /// Clones the current instance
  @override
  QuestionnaireItemOperator clone() => QuestionnaireItemOperator._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  QuestionnaireItemOperator withElement(Element? newElement) {
    return QuestionnaireItemOperator._(value: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  QuestionnaireItemOperator copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return QuestionnaireItemOperator._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
