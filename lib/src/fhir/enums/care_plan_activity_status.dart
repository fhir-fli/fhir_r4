// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes that reflect the current state of a care plan activity within its overall life cycle.
class CarePlanActivityStatus {
  // Private constructor for internal use (like enum)
  CarePlanActivityStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [CarePlanActivityStatus] from JSON.
  factory CarePlanActivityStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CarePlanActivityStatus.elementOnly.withElement(element);
    }
    return CarePlanActivityStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CarePlanActivityStatus values
  /// not_started
  static final CarePlanActivityStatus not_started = CarePlanActivityStatus._(
    'not-started',
  );

  /// scheduled
  static final CarePlanActivityStatus scheduled = CarePlanActivityStatus._(
    'scheduled',
  );

  /// in_progress
  static final CarePlanActivityStatus in_progress = CarePlanActivityStatus._(
    'in-progress',
  );

  /// on_hold
  static final CarePlanActivityStatus on_hold = CarePlanActivityStatus._(
    'on-hold',
  );

  /// completed
  static final CarePlanActivityStatus completed = CarePlanActivityStatus._(
    'completed',
  );

  /// cancelled
  static final CarePlanActivityStatus cancelled = CarePlanActivityStatus._(
    'cancelled',
  );

  /// stopped
  static final CarePlanActivityStatus stopped = CarePlanActivityStatus._(
    'stopped',
  );

  /// unknown
  static final CarePlanActivityStatus unknown = CarePlanActivityStatus._(
    'unknown',
  );

  /// entered_in_error
  static final CarePlanActivityStatus entered_in_error =
      CarePlanActivityStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final CarePlanActivityStatus elementOnly =
      CarePlanActivityStatus._('');

  /// List of all enum-like values
  static final List<CarePlanActivityStatus> values = [
    not_started,
    scheduled,
    in_progress,
    on_hold,
    completed,
    cancelled,
    stopped,
    unknown,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  CarePlanActivityStatus withElement(Element? newElement) {
    return CarePlanActivityStatus._(fhirCode, element: newElement);
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
