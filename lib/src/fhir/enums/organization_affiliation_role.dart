// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const OrganizationAffiliationRole(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [OrganizationAffiliationRole] instances.
  static OrganizationAffiliationRole fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OrganizationAffiliationRole.elementOnly.withElement(
        element,
      );
    }
    return OrganizationAffiliationRole.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  OrganizationAffiliationRole withElement(Element? newElement) {
    return OrganizationAffiliationRole.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
