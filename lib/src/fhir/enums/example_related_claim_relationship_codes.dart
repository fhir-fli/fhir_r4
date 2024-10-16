import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Related Claim Relationship codes.
enum ExampleRelatedClaimRelationshipCodes {
  /// Display: Prior Claim
  /// Definition: A prior claim instance for the same intended suite of services.
  prior('prior'),

  /// Display: Associated Claim
  /// Definition: A claim for a different suite of services which is related the suite claimed here.
  associated('associated'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ExampleRelatedClaimRelationshipCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ExampleRelatedClaimRelationshipCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleRelatedClaimRelationshipCodes.elementOnly
          .withElement(element);
    }
    return ExampleRelatedClaimRelationshipCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ExampleRelatedClaimRelationshipCodes withElement(Element? newElement) {
    return ExampleRelatedClaimRelationshipCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
