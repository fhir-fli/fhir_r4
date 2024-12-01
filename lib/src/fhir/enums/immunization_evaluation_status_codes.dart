// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the current status of the evaluation for vaccine administration event.
class ImmunizationEvaluationStatusCodes {
  // Private constructor for internal use (like enum)
  ImmunizationEvaluationStatusCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [ImmunizationEvaluationStatusCodes] from JSON.
  factory ImmunizationEvaluationStatusCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationEvaluationStatusCodes.elementOnly.withElement(element);
    }
    return ImmunizationEvaluationStatusCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ImmunizationEvaluationStatusCodes values
  /// in_progress
  static final ImmunizationEvaluationStatusCodes in_progress =
      ImmunizationEvaluationStatusCodes._(
    'in-progress',
  );

  /// not_done
  static final ImmunizationEvaluationStatusCodes not_done =
      ImmunizationEvaluationStatusCodes._(
    'not-done',
  );

  /// on_hold
  static final ImmunizationEvaluationStatusCodes on_hold =
      ImmunizationEvaluationStatusCodes._(
    'on-hold',
  );

  /// completed
  static final ImmunizationEvaluationStatusCodes completed =
      ImmunizationEvaluationStatusCodes._(
    'completed',
  );

  /// entered_in_error
  static final ImmunizationEvaluationStatusCodes entered_in_error =
      ImmunizationEvaluationStatusCodes._(
    'entered-in-error',
  );

  /// stopped
  static final ImmunizationEvaluationStatusCodes stopped =
      ImmunizationEvaluationStatusCodes._(
    'stopped',
  );

  /// unknown
  static final ImmunizationEvaluationStatusCodes unknown =
      ImmunizationEvaluationStatusCodes._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationEvaluationStatusCodes elementOnly =
      ImmunizationEvaluationStatusCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationEvaluationStatusCodes> values = [
    in_progress,
    not_done,
    on_hold,
    completed,
    entered_in_error,
    stopped,
    unknown,
  ];

  /// Returns the enum value with an element attached
  ImmunizationEvaluationStatusCodes withElement(Element? newElement) {
    return ImmunizationEvaluationStatusCodes._(fhirCode, element: newElement);
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
