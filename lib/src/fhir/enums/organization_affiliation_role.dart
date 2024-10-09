/// This example value set defines a set of codes that can be used to indicate the role of one Organization in relation to another.
enum OrganizationAffiliationRole {
  /// Display: Provider
  provider,

  /// Display: Agency
  /// Definition: An organization such as a public health agency, community/social services provider, etc.
  agency,

  /// Display: Research
  /// Definition: An organization providing research-related services such as conducting research, recruiting research participants, analyzing data, etc.
  research,

  /// Display: Payer
  /// Definition: An organization providing reimbursement, payment, or related services
  payer,

  /// Display: Diagnostics
  /// Definition: An organization providing diagnostic testing/laboratory services
  diagnostics,

  /// Display: Supplier
  /// Definition: An organization that provides medical supplies (e.g. medical devices, equipment, pharmaceutical products, etc.)
  supplier,

  /// Display: HIE/HIO
  /// Definition: An organization that facilitates electronic clinical data exchange between entities
  HIE_HIO,

  /// Display: Member
  /// Definition: A type of non-ownership relationship between entities (encompasses partnerships, collaboration, joint ventures, etc.)
  member,
  ;

  @override
  String toString() {
    switch (this) {
      case provider:
        return 'provider';
      case agency:
        return 'agency';
      case research:
        return 'research';
      case payer:
        return 'payer';
      case diagnostics:
        return 'diagnostics';
      case supplier:
        return 'supplier';
      case HIE_HIO:
        return 'HIE/HIO';
      case member:
        return 'member';
    }
  }

  String toJson() => toString();
  static OrganizationAffiliationRole fromString(String str) {
    switch (str) {
      case 'provider':
        return OrganizationAffiliationRole.provider;
      case 'agency':
        return OrganizationAffiliationRole.agency;
      case 'research':
        return OrganizationAffiliationRole.research;
      case 'payer':
        return OrganizationAffiliationRole.payer;
      case 'diagnostics':
        return OrganizationAffiliationRole.diagnostics;
      case 'supplier':
        return OrganizationAffiliationRole.supplier;
      case 'HIE/HIO':
        return OrganizationAffiliationRole.HIE_HIO;
      case 'member':
        return OrganizationAffiliationRole.member;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static OrganizationAffiliationRole fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
