import 'package:fhir_r4/fhir_r4.dart';

/// Artifact Contribution Instance Type
enum ArtifactContributionInstanceType {
  /// Display: Reviewed
  /// Definition: Reviewed
  reviewed('reviewed'),

  /// Display: Approved
  /// Definition: Approved
  approved('approved'),

  /// Display: Edited
  /// Definition: Edited
  edited('edited'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ArtifactContributionInstanceType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ArtifactContributionInstanceType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactContributionInstanceType.elementOnly.withElement(element);
    }
    return ArtifactContributionInstanceType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ArtifactContributionInstanceType withElement(Element? newElement) {
    return ArtifactContributionInstanceType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
