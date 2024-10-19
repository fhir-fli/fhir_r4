// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The Participation status of an appointment.
@collection
class ParticipationStatus {
  /// Constructor for internal use (like enum)
  ParticipationStatus({this.fhirCode, this.element})
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

  /// ParticipationStatus values
  /// accepted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationStatus accepted = ParticipationStatus(
    fhirCode: 'accepted',
  );

  /// declined
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationStatus declined = ParticipationStatus(
    fhirCode: 'declined',
  );

  /// tentative
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationStatus tentative = ParticipationStatus(
    fhirCode: 'tentative',
  );

  /// needs_action
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationStatus needs_action = ParticipationStatus(
    fhirCode: 'needs-action',
  );

  /// For instances where an Element is present but not value

  static final ParticipationStatus elementOnly = ParticipationStatus();

  /// List of all enum-like values
  static final List<ParticipationStatus> values = [
    accepted,
    declined,
    tentative,
    needs_action,
  ];

  /// Returns the enum value with an element attached
  ParticipationStatus withElement(Element? newElement) {
    return ParticipationStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ParticipationStatus] from JSON.
  static ParticipationStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipationStatus.elementOnly.withElement(element);
    }
    return ParticipationStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ParticipationStatus.$fhirCode';
}
