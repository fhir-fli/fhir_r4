// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Real world event relating to the schedule.
@collection
class EventTiming {
  /// Constructor for internal use (like enum)
  EventTiming({this.fhirCode, this.element})
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

  /// EventTiming values
  /// MORN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming MORN = EventTiming(
    fhirCode: 'MORN',
  );

  /// MORN_early
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming MORN_early = EventTiming(
    fhirCode: 'MORN.early',
  );

  /// MORN_late
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming MORN_late = EventTiming(
    fhirCode: 'MORN.late',
  );

  /// NOON
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming NOON = EventTiming(
    fhirCode: 'NOON',
  );

  /// AFT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming AFT = EventTiming(
    fhirCode: 'AFT',
  );

  /// AFT_early
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming AFT_early = EventTiming(
    fhirCode: 'AFT.early',
  );

  /// AFT_late
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming AFT_late = EventTiming(
    fhirCode: 'AFT.late',
  );

  /// EVE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming EVE = EventTiming(
    fhirCode: 'EVE',
  );

  /// EVE_early
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming EVE_early = EventTiming(
    fhirCode: 'EVE.early',
  );

  /// EVE_late
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming EVE_late = EventTiming(
    fhirCode: 'EVE.late',
  );

  /// NIGHT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming NIGHT = EventTiming(
    fhirCode: 'NIGHT',
  );

  /// PHS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming PHS = EventTiming(
    fhirCode: 'PHS',
  );

  /// HS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming HS = EventTiming(
    fhirCode: 'HS',
  );

  /// WAKE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming WAKE = EventTiming(
    fhirCode: 'WAKE',
  );

  /// C
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming C = EventTiming(
    fhirCode: 'C',
  );

  /// CM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming CM = EventTiming(
    fhirCode: 'CM',
  );

  /// CD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming CD = EventTiming(
    fhirCode: 'CD',
  );

  /// CV
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming CV = EventTiming(
    fhirCode: 'CV',
  );

  /// AC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming AC = EventTiming(
    fhirCode: 'AC',
  );

  /// ACM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming ACM = EventTiming(
    fhirCode: 'ACM',
  );

  /// ACD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming ACD = EventTiming(
    fhirCode: 'ACD',
  );

  /// ACV
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming ACV = EventTiming(
    fhirCode: 'ACV',
  );

  /// PC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming PC = EventTiming(
    fhirCode: 'PC',
  );

  /// PCM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming PCM = EventTiming(
    fhirCode: 'PCM',
  );

  /// PCD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming PCD = EventTiming(
    fhirCode: 'PCD',
  );

  /// PCV
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventTiming PCV = EventTiming(
    fhirCode: 'PCV',
  );

  /// For instances where an Element is present but not value

  static final EventTiming elementOnly = EventTiming();

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
    return EventTiming(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
