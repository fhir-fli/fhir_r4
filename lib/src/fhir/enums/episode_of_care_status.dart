// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The status of the episode of care.
@collection
class EpisodeOfCareStatus {
  /// Constructor for internal use (like enum)
  EpisodeOfCareStatus({this.fhirCode, this.element})
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

  /// EpisodeOfCareStatus values
  /// planned
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EpisodeOfCareStatus planned = EpisodeOfCareStatus(
    fhirCode: 'planned',
  );

  /// waitlist
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EpisodeOfCareStatus waitlist = EpisodeOfCareStatus(
    fhirCode: 'waitlist',
  );

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EpisodeOfCareStatus active = EpisodeOfCareStatus(
    fhirCode: 'active',
  );

  /// onhold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EpisodeOfCareStatus onhold = EpisodeOfCareStatus(
    fhirCode: 'onhold',
  );

  /// finished
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EpisodeOfCareStatus finished = EpisodeOfCareStatus(
    fhirCode: 'finished',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EpisodeOfCareStatus cancelled = EpisodeOfCareStatus(
    fhirCode: 'cancelled',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EpisodeOfCareStatus entered_in_error = EpisodeOfCareStatus(
    fhirCode: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final EpisodeOfCareStatus elementOnly = EpisodeOfCareStatus();

  /// List of all enum-like values
  static final List<EpisodeOfCareStatus> values = [
    planned,
    waitlist,
    active,
    onhold,
    finished,
    cancelled,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  EpisodeOfCareStatus withElement(Element? newElement) {
    return EpisodeOfCareStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EpisodeOfCareStatus] from JSON.
  static EpisodeOfCareStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EpisodeOfCareStatus.elementOnly.withElement(element);
    }
    return EpisodeOfCareStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EpisodeOfCareStatus.$fhirCode';
}
