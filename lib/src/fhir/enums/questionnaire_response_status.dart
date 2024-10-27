// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Lifecycle status of the questionnaire response.
class QuestionnaireResponseStatus {
  // Private constructor for internal use (like enum)
  QuestionnaireResponseStatus._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// QuestionnaireResponseStatus values
  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireResponseStatus in_progress =
      QuestionnaireResponseStatus._(
    'in-progress',
  );

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireResponseStatus completed =
      QuestionnaireResponseStatus._(
    'completed',
  );

  /// amended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireResponseStatus amended =
      QuestionnaireResponseStatus._(
    'amended',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuestionnaireResponseStatus entered_in_error =
      QuestionnaireResponseStatus._(
    'entered-in-error',
  );

  /// stopped
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
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

  /// Returns the enum value with an element attached
  QuestionnaireResponseStatus withElement(Element? newElement) {
    return QuestionnaireResponseStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [QuestionnaireResponseStatus] from JSON.
  static QuestionnaireResponseStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireResponseStatus.elementOnly.withElement(element);
    }
    return QuestionnaireResponseStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
