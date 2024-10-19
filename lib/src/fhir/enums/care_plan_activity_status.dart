// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes that reflect the current state of a care plan activity within its overall life cycle.
@Entity()
class CarePlanActivityStatus extends FhirCode {
  /// Factory constructor to create [CarePlanActivityStatus] from JSON.
  factory CarePlanActivityStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CarePlanActivityStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return CarePlanActivityStatus._(value, element);
    }
    throw ArgumentError(
      'CarePlanActivityStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// not_started
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CarePlanActivityStatus.not_started([this.element])
      : dbValue = 'not-started',
        super('not-started', element);

  /// scheduled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CarePlanActivityStatus.scheduled([this.element])
      : dbValue = 'scheduled',
        super('scheduled', element);

  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CarePlanActivityStatus.in_progress([this.element])
      : dbValue = 'in-progress',
        super('in-progress', element);

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CarePlanActivityStatus.on_hold([this.element])
      : dbValue = 'on-hold',
        super('on-hold', element);

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CarePlanActivityStatus.completed([this.element])
      : dbValue = 'completed',
        super('completed', element);

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CarePlanActivityStatus.cancelled([this.element])
      : dbValue = 'cancelled',
        super('cancelled', element);

  /// stopped
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CarePlanActivityStatus.stopped([this.element])
      : dbValue = 'stopped',
        super('stopped', element);

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CarePlanActivityStatus.unknown([this.element])
      : dbValue = 'unknown',
        super('unknown', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CarePlanActivityStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// For instances where an Element is present but not value

  CarePlanActivityStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CarePlanActivityStatus._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'not-started',
    'scheduled',
    'in-progress',
    'on-hold',
    'completed',
    'cancelled',
    'stopped',
    'unknown',
    'entered-in-error',
  ];

  /// Returns the enum value with an element attached
  CarePlanActivityStatus withElement(Element? newElement) {
    return CarePlanActivityStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CarePlanActivityStatus.$value';
}
