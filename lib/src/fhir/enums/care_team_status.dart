import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the status of the care team.
enum CareTeamStatus {
  /// Display: Proposed
  /// Definition: The care team has been drafted and proposed, but not yet participating in the coordination and delivery of patient care.
  proposed('proposed'),

  /// Display: Active
  /// Definition: The care team is currently participating in the coordination and delivery of care.
  active('active'),

  /// Display: Suspended
  /// Definition: The care team is temporarily on hold or suspended and not participating in the coordination and delivery of care.
  suspended('suspended'),

  /// Display: Inactive
  /// Definition: The care team was, but is no longer, participating in the coordination and delivery of care.
  inactive('inactive'),

  /// Display: Entered in Error
  /// Definition: The care team should have never existed.
  entered_in_error('entered-in-error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CareTeamStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CareTeamStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CareTeamStatus.elementOnly.withElement(element);
    }
    return CareTeamStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CareTeamStatus withElement(Element? newElement) {
    return CareTeamStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
