import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to indicate the role of one Organization in relation to another.
enum OrganizationAffiliationRole {
  /// Display: Provider
  /// Definition:
  provider('provider'),

  /// Display: Agency
  /// Definition: An organization such as a public health agency, community/social services provider, etc.
  agency('agency'),

  /// Display: Research
  /// Definition: An organization providing research-related services such as conducting research, recruiting research participants, analyzing data, etc.
  research('research'),

  /// Display: Payer
  /// Definition: An organization providing reimbursement, payment, or related services
  payer('payer'),

  /// Display: Diagnostics
  /// Definition: An organization providing diagnostic testing/laboratory services
  diagnostics('diagnostics'),

  /// Display: Supplier
  /// Definition: An organization that provides medical supplies (e.g. medical devices, equipment, pharmaceutical products, etc.)
  supplier('supplier'),

  /// Display: HIE/HIO
  /// Definition: An organization that facilitates electronic clinical data exchange between entities
  HIE_HIO('HIE/HIO'),

  /// Display: Member
  /// Definition: A type of non-ownership relationship between entities (encompasses partnerships, collaboration, joint ventures, etc.)
  member('member'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const OrganizationAffiliationRole(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static OrganizationAffiliationRole fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OrganizationAffiliationRole.elementOnly.withElement(element);
    }
    return OrganizationAffiliationRole.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  OrganizationAffiliationRole withElement(Element? newElement) {
    return OrganizationAffiliationRole.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
