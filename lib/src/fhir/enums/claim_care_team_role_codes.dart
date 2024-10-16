import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Claim Care Team Role codes.
enum ClaimCareTeamRoleCodes {
  /// Display: Primary provider
  /// Definition: The primary care provider.
  primary('primary'),

  /// Display: Assisting Provider
  /// Definition: Assisting care provider.
  assist('assist'),

  /// Display: Supervising Provider
  /// Definition: Supervising care provider.
  supervisor('supervisor'),

  /// Display: Other
  /// Definition: Other role on the care team.
  other('other'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ClaimCareTeamRoleCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ClaimCareTeamRoleCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClaimCareTeamRoleCodes.elementOnly.withElement(element);
    }
    return ClaimCareTeamRoleCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ClaimCareTeamRoleCodes withElement(Element? newElement) {
    return ClaimCareTeamRoleCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
