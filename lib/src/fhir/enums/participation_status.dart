// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The Participation status of an appointment.
class ParticipationStatus {
  // Private constructor for internal use (like enum)
  ParticipationStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [ParticipationStatus] from JSON.
  factory ParticipationStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipationStatus.elementOnly.withElement(element);
    }
    return ParticipationStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ParticipationStatus values
  /// accepted
  static final ParticipationStatus accepted = ParticipationStatus._(
    'accepted',
  );

  /// declined
  static final ParticipationStatus declined = ParticipationStatus._(
    'declined',
  );

  /// tentative
  static final ParticipationStatus tentative = ParticipationStatus._(
    'tentative',
  );

  /// needs_action
  static final ParticipationStatus needs_action = ParticipationStatus._(
    'needs-action',
  );

  /// For instances where an Element is present but not value

  static final ParticipationStatus elementOnly = ParticipationStatus._('');

  /// List of all enum-like values
  static final List<ParticipationStatus> values = [
    accepted,
    declined,
    tentative,
    needs_action,
  ];

  /// Returns the enum value with an element attached
  ParticipationStatus withElement(Element? newElement) {
    return ParticipationStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
