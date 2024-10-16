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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const EncounterLocationStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static EncounterLocationStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EncounterLocationStatus.elementOnly.withElement(element);
    }
    return EncounterLocationStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  EncounterLocationStatus withElement(Element? newElement) {
    return EncounterLocationStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
