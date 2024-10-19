// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Current state of the encounter.
@collection
class EncounterStatus {
  /// Constructor for internal use (like enum)
  EncounterStatus({this.fhirCode, this.element})
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

  /// EncounterStatus values
  /// planned
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EncounterStatus planned = EncounterStatus(
    fhirCode: 'planned',
  );

  /// arrived
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EncounterStatus arrived = EncounterStatus(
    fhirCode: 'arrived',
  );

  /// triaged
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EncounterStatus triaged = EncounterStatus(
    fhirCode: 'triaged',
  );

  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EncounterStatus in_progress = EncounterStatus(
    fhirCode: 'in-progress',
  );

  /// onleave
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EncounterStatus onleave = EncounterStatus(
    fhirCode: 'onleave',
  );

  /// finished
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EncounterStatus finished = EncounterStatus(
    fhirCode: 'finished',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EncounterStatus cancelled = EncounterStatus(
    fhirCode: 'cancelled',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EncounterStatus entered_in_error = EncounterStatus(
    fhirCode: 'entered-in-error',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EncounterStatus unknown = EncounterStatus(
    fhirCode: 'unknown',
  );

  /// For instances where an Element is present but not value

  static final EncounterStatus elementOnly = EncounterStatus();

  /// List of all enum-like values
  static final List<EncounterStatus> values = [
    planned,
    arrived,
    triaged,
    in_progress,
    onleave,
    finished,
    cancelled,
    entered_in_error,
    unknown,
  ];

  /// Returns the enum value with an element attached
  EncounterStatus withElement(Element? newElement) {
    return EncounterStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EncounterStatus] from JSON.
  static EncounterStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EncounterStatus.elementOnly.withElement(element);
    }
    return EncounterStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EncounterStatus.$fhirCode';
}
