import 'package:json_annotation/json_annotation.dart';

/// Contact type for a Medicinal Product.
enum ProductContactType {
  /// Display: Proposed Marketing Authorisation Holder/Person
  /// Definition: Proposed Marketing Authorisation Holder/Person
  @JsonValue('ProposedMAH')
  ProposedMAH,
  /// Display: Person/Company authorised for Communication during procedure
  /// Definition: Person/Company authorised for Communication on behalf of the Applicant during the Procedure
  @JsonValue('ProcedureContactDuring')
  ProcedureContactDuring,
  /// Display: Person/Company authorised for Communication after procedure
  /// Definition: Person/Company authorised for Communication between MAH and Authorities after Authorisation
  @JsonValue('ProcedureContactAfter')
  ProcedureContactAfter,
  /// Display: Qualified Person Responsible for Pharmacovigilance
  /// Definition: Qualified Person Responsible for Pharmacovigilance
  @JsonValue('QPPV')
  QPPV,
  /// Display: Pharmacovigilance Enquiry Information
  /// Definition: Pharmacovigilance Enquiry Information
  @JsonValue('PVEnquiries')
  PVEnquiries,
;

@override
  String toString() {
      switch(this) {
        case ProposedMAH: return 'ProposedMAH';
        case ProcedureContactDuring: return 'ProcedureContactDuring';
        case ProcedureContactAfter: return 'ProcedureContactAfter';
        case QPPV: return 'QPPV';
        case PVEnquiries: return 'PVEnquiries';
      }
      }
String toJson() => toString();
  ProductContactType fromString(String str) {
    switch(str) {
      case 'ProposedMAH': return ProductContactType.ProposedMAH;
      case 'ProcedureContactDuring': return ProductContactType.ProcedureContactDuring;
      case 'ProcedureContactAfter': return ProductContactType.ProcedureContactAfter;
      case 'QPPV': return ProductContactType.QPPV;
      case 'PVEnquiries': return ProductContactType.PVEnquiries;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ProductContactType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

