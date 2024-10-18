// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ProductContactType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ProductContactType] instances.
  static ProductContactType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductContactType.elementOnly.withElement(
        element,
      );
    }
    return ProductContactType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ProductContactType withElement(Element? newElement) {
    return ProductContactType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
