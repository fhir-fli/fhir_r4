// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Codes that reflect the current state of a care plan activity within its overall life cycle.
@collection
class CarePlanActivityStatus {
  /// Constructor for internal use (like enum)
  CarePlanActivityStatus({this.fhirCode, this.element})
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

  /// CarePlanActivityStatus values
  /// not_started
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanActivityStatus not_started = CarePlanActivityStatus(
    fhirCode: 'not-started',
  );

  /// scheduled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanActivityStatus scheduled = CarePlanActivityStatus(
    fhirCode: 'scheduled',
  );

  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanActivityStatus in_progress = CarePlanActivityStatus(
    fhirCode: 'in-progress',
  );

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanActivityStatus on_hold = CarePlanActivityStatus(
    fhirCode: 'on-hold',
  );

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanActivityStatus completed = CarePlanActivityStatus(
    fhirCode: 'completed',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanActivityStatus cancelled = CarePlanActivityStatus(
    fhirCode: 'cancelled',
  );

  /// stopped
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanActivityStatus stopped = CarePlanActivityStatus(
    fhirCode: 'stopped',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanActivityStatus unknown = CarePlanActivityStatus(
    fhirCode: 'unknown',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CarePlanActivityStatus entered_in_error = CarePlanActivityStatus(
    fhirCode: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final CarePlanActivityStatus elementOnly = CarePlanActivityStatus();

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
    return CarePlanActivityStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CarePlanActivityStatus] from JSON.
  static CarePlanActivityStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CarePlanActivityStatus.elementOnly.withElement(element);
    }
    return CarePlanActivityStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CarePlanActivityStatus.$fhirCode';
}
