/// This value set includes Coverage Class codes.
enum CoverageClassCodes {
  /// Display: Group
  /// Definition: An employee group
  group,

  /// Display: SubGroup
  /// Definition: A sub-group of an employee group
  subgroup,

  /// Display: Plan
  /// Definition: A specific suite of benefits.
  plan,

  /// Display: SubPlan
  /// Definition: A subset of a specific suite of benefits.
  subplan,

  /// Display: Class
  /// Definition: A class of benefits.
  class_,

  /// Display: SubClass
  /// Definition: A subset of a class of benefits.
  subclass,

  /// Display: Sequence
  /// Definition: A sequence number associated with a short-term continuance of the coverage.
  sequence,

  /// Display: RX BIN
  /// Definition: Pharmacy benefit manager's Business Identification Number.
  rxbin,

  /// Display: RX PCN
  /// Definition: A Pharmacy Benefit Manager specified Processor Control Number.
  rxpcn,

  /// Display: RX Id
  /// Definition: A Pharmacy Benefit Manager specified Member ID.
  rxid,

  /// Display: RX Group
  /// Definition: A Pharmacy Benefit Manager specified Group number.
  rxgroup,
  ;

  @override
  String toString() {
    switch (this) {
      case group:
        return 'group';
      case subgroup:
        return 'subgroup';
      case plan:
        return 'plan';
      case subplan:
        return 'subplan';
      case class_:
        return 'class';
      case subclass:
        return 'subclass';
      case sequence:
        return 'sequence';
      case rxbin:
        return 'rxbin';
      case rxpcn:
        return 'rxpcn';
      case rxid:
        return 'rxid';
      case rxgroup:
        return 'rxgroup';
    }
  }

  String toJson() => toString();
  static CoverageClassCodes fromString(String str) {
    switch (str) {
      case 'group':
        return CoverageClassCodes.group;
      case 'subgroup':
        return CoverageClassCodes.subgroup;
      case 'plan':
        return CoverageClassCodes.plan;
      case 'subplan':
        return CoverageClassCodes.subplan;
      case 'class':
        return CoverageClassCodes.class_;
      case 'subclass':
        return CoverageClassCodes.subclass;
      case 'sequence':
        return CoverageClassCodes.sequence;
      case 'rxbin':
        return CoverageClassCodes.rxbin;
      case 'rxpcn':
        return CoverageClassCodes.rxpcn;
      case 'rxid':
        return CoverageClassCodes.rxid;
      case 'rxgroup':
        return CoverageClassCodes.rxgroup;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static CoverageClassCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
