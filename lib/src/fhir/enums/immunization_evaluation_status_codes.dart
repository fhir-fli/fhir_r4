// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the current status of the evaluation for vaccine administration event.
@collection
class ImmunizationEvaluationStatusCodes {
  /// Constructor for internal use (like enum)
  ImmunizationEvaluationStatusCodes({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ImmunizationEvaluationStatusCodes values
  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationStatusCodes in_progress =
      ImmunizationEvaluationStatusCodes(
    fhirCode: 'in-progress',
  );

  /// not_done
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationStatusCodes not_done =
      ImmunizationEvaluationStatusCodes(
    fhirCode: 'not-done',
  );

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationStatusCodes on_hold =
      ImmunizationEvaluationStatusCodes(
    fhirCode: 'on-hold',
  );

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationStatusCodes completed =
      ImmunizationEvaluationStatusCodes(
    fhirCode: 'completed',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationStatusCodes entered_in_error =
      ImmunizationEvaluationStatusCodes(
    fhirCode: 'entered-in-error',
  );

  /// stopped
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationStatusCodes stopped =
      ImmunizationEvaluationStatusCodes(
    fhirCode: 'stopped',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationStatusCodes unknown =
      ImmunizationEvaluationStatusCodes(
    fhirCode: 'unknown',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationEvaluationStatusCodes elementOnly =
      ImmunizationEvaluationStatusCodes();

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
    return ImmunizationEvaluationStatusCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ImmunizationEvaluationStatusCodes] from JSON.
  static ImmunizationEvaluationStatusCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationEvaluationStatusCodes.elementOnly.withElement(element);
    }
    return ImmunizationEvaluationStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationEvaluationStatusCodes.$fhirCode';
}
