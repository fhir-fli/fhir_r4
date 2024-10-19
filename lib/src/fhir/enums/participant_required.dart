// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Is the Participant required to attend the appointment.
@collection
class ParticipantRequired {
  /// Constructor for internal use (like enum)
  ParticipantRequired({this.fhirCode, this.element})
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

  /// ParticipantRequired values
  /// required_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipantRequired required_ = ParticipantRequired(
    fhirCode: 'required',
  );

  /// optional
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipantRequired optional = ParticipantRequired(
    fhirCode: 'optional',
  );

  /// information_only
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipantRequired information_only = ParticipantRequired(
    fhirCode: 'information-only',
  );

  /// For instances where an Element is present but not value

  static final ParticipantRequired elementOnly = ParticipantRequired();

  /// List of all enum-like values
  static final List<ParticipantRequired> values = [
    required_,
    optional,
    information_only,
  ];

  /// Returns the enum value with an element attached
  ParticipantRequired withElement(Element? newElement) {
    return ParticipantRequired(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ParticipantRequired] from JSON.
  static ParticipantRequired fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipantRequired.elementOnly.withElement(element);
    }
    return ParticipantRequired.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ParticipantRequired.$fhirCode';
}
