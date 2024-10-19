// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Real world event relating to the schedule.
class EventTiming {
  // Private constructor for internal use (like enum)
  EventTiming._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EventTiming values
  /// MORN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming MORN = EventTiming._(
    'MORN',
  );

  /// MORN_early
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming MORN_early = EventTiming._(
    'MORN.early',
  );

  /// MORN_late
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming MORN_late = EventTiming._(
    'MORN.late',
  );

  /// NOON
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming NOON = EventTiming._(
    'NOON',
  );

  /// AFT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming AFT = EventTiming._(
    'AFT',
  );

  /// AFT_early
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming AFT_early = EventTiming._(
    'AFT.early',
  );

  /// AFT_late
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming AFT_late = EventTiming._(
    'AFT.late',
  );

  /// EVE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming EVE = EventTiming._(
    'EVE',
  );

  /// EVE_early
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming EVE_early = EventTiming._(
    'EVE.early',
  );

  /// EVE_late
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming EVE_late = EventTiming._(
    'EVE.late',
  );

  /// NIGHT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming NIGHT = EventTiming._(
    'NIGHT',
  );

  /// PHS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming PHS = EventTiming._(
    'PHS',
  );

  /// HS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming HS = EventTiming._(
    'HS',
  );

  /// WAKE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming WAKE = EventTiming._(
    'WAKE',
  );

  /// C
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming C = EventTiming._(
    'C',
  );

  /// CM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming CM = EventTiming._(
    'CM',
  );

  /// CD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming CD = EventTiming._(
    'CD',
  );

  /// CV
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming CV = EventTiming._(
    'CV',
  );

  /// AC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming AC = EventTiming._(
    'AC',
  );

  /// ACM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming ACM = EventTiming._(
    'ACM',
  );

  /// ACD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming ACD = EventTiming._(
    'ACD',
  );

  /// ACV
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming ACV = EventTiming._(
    'ACV',
  );

  /// PC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming PC = EventTiming._(
    'PC',
  );

  /// PCM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming PCM = EventTiming._(
    'PCM',
  );

  /// PCD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming PCD = EventTiming._(
    'PCD',
  );

  /// PCV
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming PCV = EventTiming._(
    'PCV',
  );

  /// For instances where an Element is present but not value

  static final EventTiming elementOnly = EventTiming._('');

  /// List of all enum-like values
  static final List<EventTiming> values = [
    MORN,
    MORN_early,
    MORN_late,
    NOON,
    AFT,
    AFT_early,
    AFT_late,
    EVE,
    EVE_early,
    EVE_late,
    NIGHT,
    PHS,
    HS,
    WAKE,
    C,
    CM,
    CD,
    CV,
    AC,
    ACM,
    ACD,
    ACV,
    PC,
    PCM,
    PCD,
    PCV,
  ];

  /// Returns the enum value with an element attached
  EventTiming withElement(Element? newElement) {
    return EventTiming._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EventTiming] from JSON.
  static EventTiming fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EventTiming.elementOnly.withElement(element);
    }
    return EventTiming.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EventTiming.$fhirCode';
}
