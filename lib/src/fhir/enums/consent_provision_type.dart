import 'package:fhir_r4/fhir_r4.dart';

/// How a rule statement is applied, such as adding additional consent or removing consent.
enum ConsentProvisionType {
  /// Display: Opt Out
  /// Definition: Consent is denied for actions meeting these rules.
  deny('deny'),

  /// Display: Opt In
  /// Definition: Consent is provided for actions meeting these rules.
  permit('permit'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ConsentProvisionType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ConsentProvisionType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentProvisionType.elementOnly.withElement(element);
    }
    return ConsentProvisionType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ConsentProvisionType withElement(Element? newElement) {
    return ConsentProvisionType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
