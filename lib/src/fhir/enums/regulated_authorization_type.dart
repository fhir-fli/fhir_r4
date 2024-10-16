import 'package:fhir_r4/fhir_r4.dart';

/// Overall type of this authorization.
enum RegulatedAuthorizationType {
  /// Display: Marketing Authorization
  /// Definition:
  MarketingAuth('MarketingAuth'),

  /// Display: Orphan Drug Authorization
  /// Definition:
  Orphan('Orphan'),

  /// Display: Pediatric Use Drug Authorization
  /// Definition:
  Pediatric('Pediatric'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const RegulatedAuthorizationType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static RegulatedAuthorizationType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RegulatedAuthorizationType.elementOnly.withElement(element);
    }
    return RegulatedAuthorizationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  RegulatedAuthorizationType withElement(Element? newElement) {
    return RegulatedAuthorizationType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
