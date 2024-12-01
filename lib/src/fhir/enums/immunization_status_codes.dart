// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the current status of the administered dose of vaccine.
class ImmunizationStatusCodes {
  // Private constructor for internal use (like enum)
  ImmunizationStatusCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [ImmunizationStatusCodes] from JSON.
  factory ImmunizationStatusCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationStatusCodes.elementOnly.withElement(element);
    }
    return ImmunizationStatusCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ImmunizationStatusCodes values
  /// preparation
  static final ImmunizationStatusCodes preparation = ImmunizationStatusCodes._(
    'preparation',
  );

  /// in_progress
  static final ImmunizationStatusCodes in_progress = ImmunizationStatusCodes._(
    'in-progress',
  );

  /// not_done
  static final ImmunizationStatusCodes not_done = ImmunizationStatusCodes._(
    'not-done',
  );

  /// on_hold
  static final ImmunizationStatusCodes on_hold = ImmunizationStatusCodes._(
    'on-hold',
  );

  /// stopped
  static final ImmunizationStatusCodes stopped = ImmunizationStatusCodes._(
    'stopped',
  );

  /// completed
  static final ImmunizationStatusCodes completed = ImmunizationStatusCodes._(
    'completed',
  );

  /// entered_in_error
  static final ImmunizationStatusCodes entered_in_error =
      ImmunizationStatusCodes._(
    'entered-in-error',
  );

  /// unknown
  static final ImmunizationStatusCodes unknown = ImmunizationStatusCodes._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationStatusCodes elementOnly =
      ImmunizationStatusCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationStatusCodes> values = [
    preparation,
    in_progress,
    not_done,
    on_hold,
    stopped,
    completed,
    entered_in_error,
    unknown,
  ];

  /// Returns the enum value with an element attached
  ImmunizationStatusCodes withElement(Element? newElement) {
    return ImmunizationStatusCodes._(fhirCode, element: newElement);
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
