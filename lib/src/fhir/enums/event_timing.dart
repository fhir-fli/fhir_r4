// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Real world event relating to the schedule.
@Entity()
class EventTiming extends FhirCode {
  /// Factory constructor to create [EventTiming] from JSON.
  factory EventTiming.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EventTiming.elementOnly(element);
    }
    if (values.contains(value)) {
      return EventTiming._(value, element);
    }
    throw ArgumentError(
      'EventTiming.fromJson: JSON value is not a valid value',
    );
  }

  /// MORN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.MORN([this.element])
      : dbValue = 'MORN',
        super('MORN', element);

  /// MORN_early
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.MORN_early([this.element])
      : dbValue = 'MORN.early',
        super('MORN.early', element);

  /// MORN_late
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.MORN_late([this.element])
      : dbValue = 'MORN.late',
        super('MORN.late', element);

  /// NOON
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.NOON([this.element])
      : dbValue = 'NOON',
        super('NOON', element);

  /// AFT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.AFT([this.element])
      : dbValue = 'AFT',
        super('AFT', element);

  /// AFT_early
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.AFT_early([this.element])
      : dbValue = 'AFT.early',
        super('AFT.early', element);

  /// AFT_late
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.AFT_late([this.element])
      : dbValue = 'AFT.late',
        super('AFT.late', element);

  /// EVE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.EVE([this.element])
      : dbValue = 'EVE',
        super('EVE', element);

  /// EVE_early
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.EVE_early([this.element])
      : dbValue = 'EVE.early',
        super('EVE.early', element);

  /// EVE_late
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.EVE_late([this.element])
      : dbValue = 'EVE.late',
        super('EVE.late', element);

  /// NIGHT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.NIGHT([this.element])
      : dbValue = 'NIGHT',
        super('NIGHT', element);

  /// PHS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.PHS([this.element])
      : dbValue = 'PHS',
        super('PHS', element);

  /// HS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.HS([this.element])
      : dbValue = 'HS',
        super('HS', element);

  /// WAKE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.WAKE([this.element])
      : dbValue = 'WAKE',
        super('WAKE', element);

  /// C
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.C([this.element])
      : dbValue = 'C',
        super('C', element);

  /// CM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.CM([this.element])
      : dbValue = 'CM',
        super('CM', element);

  /// CD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.CD([this.element])
      : dbValue = 'CD',
        super('CD', element);

  /// CV
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.CV([this.element])
      : dbValue = 'CV',
        super('CV', element);

  /// AC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.AC([this.element])
      : dbValue = 'AC',
        super('AC', element);

  /// ACM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.ACM([this.element])
      : dbValue = 'ACM',
        super('ACM', element);

  /// ACD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.ACD([this.element])
      : dbValue = 'ACD',
        super('ACD', element);

  /// ACV
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.ACV([this.element])
      : dbValue = 'ACV',
        super('ACV', element);

  /// PC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.PC([this.element])
      : dbValue = 'PC',
        super('PC', element);

  /// PCM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.PCM([this.element])
      : dbValue = 'PCM',
        super('PCM', element);

  /// PCD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.PCD([this.element])
      : dbValue = 'PCD',
        super('PCD', element);

  /// PCV
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EventTiming.PCV([this.element])
      : dbValue = 'PCV',
        super('PCV', element);

  /// For instances where an Element is present but not value

  EventTiming.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  EventTiming._(super.input, [super.element])
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
    'MORN',
    'MORN.early',
    'MORN.late',
    'NOON',
    'AFT',
    'AFT.early',
    'AFT.late',
    'EVE',
    'EVE.early',
    'EVE.late',
    'NIGHT',
    'PHS',
    'HS',
    'WAKE',
    'C',
    'CM',
    'CD',
    'CV',
    'AC',
    'ACM',
    'ACD',
    'ACV',
    'PC',
    'PCM',
    'PCD',
    'PCV',
  ];

  /// Returns the enum value with an element attached
  EventTiming withElement(Element? newElement) {
    return EventTiming._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EventTiming.$value';
}
