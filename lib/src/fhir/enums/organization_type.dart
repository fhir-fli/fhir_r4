/// This example value set defines a set of codes that can be used to indicate a type of organization.
enum OrganizationType {
  /// Display: Healthcare Provider
  /// Definition: An organization that provides healthcare services.
  prov,

  /// Display: Hospital Department
  /// Definition: A department or ward within a hospital (Generally is not applicable to top level organizations)
  dept,

  /// Display: Organizational team
  /// Definition: An organizational team is usually a grouping of practitioners that perform a specific function within an organization (which could be a top level organization, or a department).
  team,

  /// Display: Government
  /// Definition: A political body, often used when including organization records for government bodies such as a Federal Government, State or Local Government.
  govt,

  /// Display: Insurance Company
  /// Definition: A company that provides insurance to its subscribers that may include healthcare related policies.
  ins,

  /// Display: Payer
  /// Definition: A company, charity, or governmental organization, which processes claims and/or issues payments to providers on behalf of patients or groups of patients.
  pay,

  /// Display: Educational Institute
  /// Definition: An educational institution that provides education or research facilities.
  edu,

  /// Display: Religious Institution
  /// Definition: An organization that is identified as a part of a religious institution.
  reli,

  /// Display: Clinical Research Sponsor
  /// Definition: An organization that is identified as a Pharmaceutical/Clinical Research Sponsor.
  crs,

  /// Display: Community Group
  /// Definition: An un-incorporated community group.
  cg,

  /// Display: Non-Healthcare Business or Corporation
  /// Definition: An organization that is a registered business or corporation but not identified by other types.
  bus,

  /// Display: Other
  /// Definition: Other type of organization not already specified.
  other,
  ;

  @override
  String toString() {
    switch (this) {
      case prov:
        return 'prov';
      case dept:
        return 'dept';
      case team:
        return 'team';
      case govt:
        return 'govt';
      case ins:
        return 'ins';
      case pay:
        return 'pay';
      case edu:
        return 'edu';
      case reli:
        return 'reli';
      case crs:
        return 'crs';
      case cg:
        return 'cg';
      case bus:
        return 'bus';
      case other:
        return 'other';
    }
  }

  /// Returns a [String] from a [OrganizationType] enum.
  String toJson() => toString();

  /// Returns a [OrganizationType] from a [String] enum.
  static OrganizationType fromString(String str) {
    switch (str) {
      case 'prov':
        return OrganizationType.prov;
      case 'dept':
        return OrganizationType.dept;
      case 'team':
        return OrganizationType.team;
      case 'govt':
        return OrganizationType.govt;
      case 'ins':
        return OrganizationType.ins;
      case 'pay':
        return OrganizationType.pay;
      case 'edu':
        return OrganizationType.edu;
      case 'reli':
        return OrganizationType.reli;
      case 'crs':
        return OrganizationType.crs;
      case 'cg':
        return OrganizationType.cg;
      case 'bus':
        return OrganizationType.bus;
      case 'other':
        return OrganizationType.other;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [OrganizationType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static OrganizationType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
