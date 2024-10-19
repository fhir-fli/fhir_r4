// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Current state of the encounter.
@Entity()
class EncounterStatus extends FhirCode {
  /// Factory constructor to create [EncounterStatus] from JSON.
  factory EncounterStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EncounterStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return EncounterStatus._(value, element);
    }
    throw ArgumentError(
      'EncounterStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// planned
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EncounterStatus.planned([this.element])
      : dbValue = 'planned',
        super('planned', element);

  /// arrived
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EncounterStatus.arrived([this.element])
      : dbValue = 'arrived',
        super('arrived', element);

  /// triaged
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EncounterStatus.triaged([this.element])
      : dbValue = 'triaged',
        super('triaged', element);

  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EncounterStatus.in_progress([this.element])
      : dbValue = 'in-progress',
        super('in-progress', element);

  /// onleave
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EncounterStatus.onleave([this.element])
      : dbValue = 'onleave',
        super('onleave', element);

  /// finished
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EncounterStatus.finished([this.element])
      : dbValue = 'finished',
        super('finished', element);

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EncounterStatus.cancelled([this.element])
      : dbValue = 'cancelled',
        super('cancelled', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EncounterStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EncounterStatus.unknown([this.element])
      : dbValue = 'unknown',
        super('unknown', element);

  /// For instances where an Element is present but not value

  EncounterStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  EncounterStatus._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'planned',
    'arrived',
    'triaged',
    'in-progress',
    'onleave',
    'finished',
    'cancelled',
    'entered-in-error',
    'unknown',
  ];

  /// Returns the enum value with an element attached
  EncounterStatus withElement(Element? newElement) {
    return EncounterStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EncounterStatus.$value';
}
