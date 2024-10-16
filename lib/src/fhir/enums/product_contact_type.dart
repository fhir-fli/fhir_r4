import 'package:fhir_r4/fhir_r4.dart';

/// Contact type for a Medicinal Product.
enum ProductContactType {
  /// Display: Proposed Marketing Authorisation Holder/Person
  /// Definition: Proposed Marketing Authorisation Holder/Person
  ProposedMAH('ProposedMAH'),

  /// Display: Person/Company authorised for Communication during procedure
  /// Definition: Person/Company authorised for Communication on behalf of the Applicant during the Procedure
  ProcedureContactDuring('ProcedureContactDuring'),

  /// Display: Person/Company authorised for Communication after procedure
  /// Definition: Person/Company authorised for Communication between MAH and Authorities after Authorisation
  ProcedureContactAfter('ProcedureContactAfter'),

  /// Display: Qualified Person Responsible for Pharmacovigilance
  /// Definition: Qualified Person Responsible for Pharmacovigilance
  QPPV('QPPV'),

  /// Display: Pharmacovigilance Enquiry Information
  /// Definition: Pharmacovigilance Enquiry Information
  PVEnquiries('PVEnquiries'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ProductContactType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ProductContactType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductContactType.elementOnly.withElement(element);
    }
    return ProductContactType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ProductContactType withElement(Element? newElement) {
    return ProductContactType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
