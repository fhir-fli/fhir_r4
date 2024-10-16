import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes the four Consent scope codes.
enum ConsentScopeCodes {
  /// Display: Advanced Care Directive
  /// Definition: Actions to be taken if they are no longer able to make decisions for themselves
  adr('adr'),

  /// Display: Research
  /// Definition: Consent to participate in research protocol and information sharing required
  research('research'),

  /// Display: Privacy Consent
  /// Definition: Agreement to collect, access, use or disclose (share) information
  patient_privacy('patient-privacy'),

  /// Display: Treatment
  /// Definition: Consent to undergo a specific treatment
  treatment('treatment'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ConsentScopeCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ConsentScopeCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentScopeCodes.elementOnly.withElement(element);
    }
    return ConsentScopeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ConsentScopeCodes withElement(Element? newElement) {
    return ConsentScopeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
