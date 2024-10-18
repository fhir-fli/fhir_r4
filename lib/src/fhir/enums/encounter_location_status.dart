// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the location.
enum EncounterLocationStatus {
  /// Display: Planned
  /// Definition: The patient is planned to be moved to this location at some point in the future.
  planned('planned'),

  /// Display: Active
  /// Definition: The patient is currently at this location, or was between the period specified. A system may update these records when the patient leaves the location to either reserved, or completed.
  active('active'),

  /// Display: Reserved
  /// Definition: This location is held empty for this patient.
  reserved('reserved'),

  /// Display: Completed
  /// Definition: The patient was at this location during the period specified. Not to be used when the patient is currently at the location.
  completed('completed'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const EncounterLocationStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [EncounterLocationStatus] instances.
  static EncounterLocationStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EncounterLocationStatus.elementOnly.withElement(element);
    }
    return EncounterLocationStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  EncounterLocationStatus withElement(Element? newElement) {
    return EncounterLocationStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
