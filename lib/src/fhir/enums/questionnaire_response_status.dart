// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Lifecycle status of the questionnaire response.
class QuestionnaireResponseStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  QuestionnaireResponseStatus._(super.value, [super.element]);

  /// Factory constructor to create [QuestionnaireResponseStatus] from JSON.
  factory QuestionnaireResponseStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireResponseStatus.elementOnly.withElement(element);
    }
    return QuestionnaireResponseStatus._(value, element);
  }

  /// in_progress
  static final QuestionnaireResponseStatus in_progress =
      QuestionnaireResponseStatus._(
    'in-progress',
  );

  /// completed
  static final QuestionnaireResponseStatus completed =
      QuestionnaireResponseStatus._(
    'completed',
  );

  /// amended
  static final QuestionnaireResponseStatus amended =
      QuestionnaireResponseStatus._(
    'amended',
  );

  /// entered_in_error
  static final QuestionnaireResponseStatus entered_in_error =
      QuestionnaireResponseStatus._(
    'entered-in-error',
  );

  /// stopped
  static final QuestionnaireResponseStatus stopped =
      QuestionnaireResponseStatus._(
    'stopped',
  );

  /// For instances where an Element is present but not value

  static final QuestionnaireResponseStatus elementOnly =
      QuestionnaireResponseStatus._('');

  /// List of all enum-like values
  static final List<QuestionnaireResponseStatus> values = [
    in_progress,
    completed,
    amended,
    entered_in_error,
    stopped,
  ];

  /// Clones the current instance
  @override
  QuestionnaireResponseStatus clone() =>
      QuestionnaireResponseStatus._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  QuestionnaireResponseStatus setElement(String name, dynamic elementValue) {
    return QuestionnaireResponseStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  QuestionnaireResponseStatus withElement(Element? newElement) {
    return QuestionnaireResponseStatus._(value, newElement);
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
  QuestionnaireResponseStatus copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return QuestionnaireResponseStatus._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
