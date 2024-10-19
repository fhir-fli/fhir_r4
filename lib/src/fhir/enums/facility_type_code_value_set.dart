// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This is the code representing the type of organizational setting where the clinical encounter, service, interaction, or treatment occurred. The value set used for Healthcare Facility Type has been defined by HITSP to be the value set reproduced from HITSP C80 Table 2-147.
@collection
class FacilityTypeCodeValueSet {
  /// Constructor for internal use (like enum)
  FacilityTypeCodeValueSet({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// FacilityTypeCodeValueSet values
  /// value82242000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value82242000 =
      FacilityTypeCodeValueSet(
    fhirCode: '82242000',
  );

  /// value225732001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value225732001 =
      FacilityTypeCodeValueSet(
    fhirCode: '225732001',
  );

  /// value79993009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value79993009 =
      FacilityTypeCodeValueSet(
    fhirCode: '79993009',
  );

  /// value32074000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value32074000 =
      FacilityTypeCodeValueSet(
    fhirCode: '32074000',
  );

  /// value4322002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value4322002 = FacilityTypeCodeValueSet(
    fhirCode: '4322002',
  );

  /// value224687002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value224687002 =
      FacilityTypeCodeValueSet(
    fhirCode: '224687002',
  );

  /// value62480006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value62480006 =
      FacilityTypeCodeValueSet(
    fhirCode: '62480006',
  );

  /// value80522000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value80522000 =
      FacilityTypeCodeValueSet(
    fhirCode: '80522000',
  );

  /// value36125001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value36125001 =
      FacilityTypeCodeValueSet(
    fhirCode: '36125001',
  );

  /// value48311003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value48311003 =
      FacilityTypeCodeValueSet(
    fhirCode: '48311003',
  );

  /// value284546000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value284546000 =
      FacilityTypeCodeValueSet(
    fhirCode: '284546000',
  );

  /// value42665001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value42665001 =
      FacilityTypeCodeValueSet(
    fhirCode: '42665001',
  );

  /// value45618002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value45618002 =
      FacilityTypeCodeValueSet(
    fhirCode: '45618002',
  );

  /// value418518002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value418518002 =
      FacilityTypeCodeValueSet(
    fhirCode: '418518002',
  );

  /// value73770003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value73770003 =
      FacilityTypeCodeValueSet(
    fhirCode: '73770003',
  );

  /// value69362002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value69362002 =
      FacilityTypeCodeValueSet(
    fhirCode: '69362002',
  );

  /// value52668009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value52668009 =
      FacilityTypeCodeValueSet(
    fhirCode: '52668009',
  );

  /// value360957003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value360957003 =
      FacilityTypeCodeValueSet(
    fhirCode: '360957003',
  );

  /// value10206005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value10206005 =
      FacilityTypeCodeValueSet(
    fhirCode: '10206005',
  );

  /// value37550003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value37550003 =
      FacilityTypeCodeValueSet(
    fhirCode: '37550003',
  );

  /// value73644007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value73644007 =
      FacilityTypeCodeValueSet(
    fhirCode: '73644007',
  );

  /// value31628002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value31628002 =
      FacilityTypeCodeValueSet(
    fhirCode: '31628002',
  );

  /// value58482006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value58482006 =
      FacilityTypeCodeValueSet(
    fhirCode: '58482006',
  );

  /// value90484001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value90484001 =
      FacilityTypeCodeValueSet(
    fhirCode: '90484001',
  );

  /// value1814000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value1814000 = FacilityTypeCodeValueSet(
    fhirCode: '1814000',
  );

  /// value22549003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value22549003 =
      FacilityTypeCodeValueSet(
    fhirCode: '22549003',
  );

  /// value56293002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value56293002 =
      FacilityTypeCodeValueSet(
    fhirCode: '56293002',
  );

  /// value360966004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value360966004 =
      FacilityTypeCodeValueSet(
    fhirCode: '360966004',
  );

  /// value2849009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value2849009 = FacilityTypeCodeValueSet(
    fhirCode: '2849009',
  );

  /// value14866005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value14866005 =
      FacilityTypeCodeValueSet(
    fhirCode: '14866005',
  );

  /// value38238005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value38238005 =
      FacilityTypeCodeValueSet(
    fhirCode: '38238005',
  );

  /// value56189001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value56189001 =
      FacilityTypeCodeValueSet(
    fhirCode: '56189001',
  );

  /// value89972002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value89972002 =
      FacilityTypeCodeValueSet(
    fhirCode: '89972002',
  );

  /// value78088001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value78088001 =
      FacilityTypeCodeValueSet(
    fhirCode: '78088001',
  );

  /// value78001009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value78001009 =
      FacilityTypeCodeValueSet(
    fhirCode: '78001009',
  );

  /// value23392004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value23392004 =
      FacilityTypeCodeValueSet(
    fhirCode: '23392004',
  );

  /// value36293008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value36293008 =
      FacilityTypeCodeValueSet(
    fhirCode: '36293008',
  );

  /// value3729002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value3729002 = FacilityTypeCodeValueSet(
    fhirCode: '3729002',
  );

  /// value5584006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value5584006 = FacilityTypeCodeValueSet(
    fhirCode: '5584006',
  );

  /// value37546005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value37546005 =
      FacilityTypeCodeValueSet(
    fhirCode: '37546005',
  );

  /// value57159002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value57159002 =
      FacilityTypeCodeValueSet(
    fhirCode: '57159002',
  );

  /// value331006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value331006 = FacilityTypeCodeValueSet(
    fhirCode: '331006',
  );

  /// value50569004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value50569004 =
      FacilityTypeCodeValueSet(
    fhirCode: '50569004',
  );

  /// value79491001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value79491001 =
      FacilityTypeCodeValueSet(
    fhirCode: '79491001',
  );

  /// value33022008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value33022008 =
      FacilityTypeCodeValueSet(
    fhirCode: '33022008',
  );

  /// value19602009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value19602009 =
      FacilityTypeCodeValueSet(
    fhirCode: '19602009',
  );

  /// value39350007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value39350007 =
      FacilityTypeCodeValueSet(
    fhirCode: '39350007',
  );

  /// value83891005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value83891005 =
      FacilityTypeCodeValueSet(
    fhirCode: '83891005',
  );

  /// value394759007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value394759007 =
      FacilityTypeCodeValueSet(
    fhirCode: '394759007',
  );

  /// value405607001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value405607001 =
      FacilityTypeCodeValueSet(
    fhirCode: '405607001',
  );

  /// value309900005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value309900005 =
      FacilityTypeCodeValueSet(
    fhirCode: '309900005',
  );

  /// value275576008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value275576008 =
      FacilityTypeCodeValueSet(
    fhirCode: '275576008',
  );

  /// value10531005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value10531005 =
      FacilityTypeCodeValueSet(
    fhirCode: '10531005',
  );

  /// value91154008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value91154008 =
      FacilityTypeCodeValueSet(
    fhirCode: '91154008',
  );

  /// value41844007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value41844007 =
      FacilityTypeCodeValueSet(
    fhirCode: '41844007',
  );

  /// value45899008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value45899008 =
      FacilityTypeCodeValueSet(
    fhirCode: '45899008',
  );

  /// value51563005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value51563005 =
      FacilityTypeCodeValueSet(
    fhirCode: '51563005',
  );

  /// value1773006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value1773006 = FacilityTypeCodeValueSet(
    fhirCode: '1773006',
  );

  /// value72311000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value72311000 =
      FacilityTypeCodeValueSet(
    fhirCode: '72311000',
  );

  /// value6827000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value6827000 = FacilityTypeCodeValueSet(
    fhirCode: '6827000',
  );

  /// value309898008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value309898008 =
      FacilityTypeCodeValueSet(
    fhirCode: '309898008',
  );

  /// value39913001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value39913001 =
      FacilityTypeCodeValueSet(
    fhirCode: '39913001',
  );

  /// value77931003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value77931003 =
      FacilityTypeCodeValueSet(
    fhirCode: '77931003',
  );

  /// value25681007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value25681007 =
      FacilityTypeCodeValueSet(
    fhirCode: '25681007',
  );

  /// value20078004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value20078004 =
      FacilityTypeCodeValueSet(
    fhirCode: '20078004',
  );

  /// value46224007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value46224007 =
      FacilityTypeCodeValueSet(
    fhirCode: '46224007',
  );

  /// value81234003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value81234003 =
      FacilityTypeCodeValueSet(
    fhirCode: '81234003',
  );

  /// value35971002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value35971002 =
      FacilityTypeCodeValueSet(
    fhirCode: '35971002',
  );

  /// value11424001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value11424001 =
      FacilityTypeCodeValueSet(
    fhirCode: '11424001',
  );

  /// value409519008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value409519008 =
      FacilityTypeCodeValueSet(
    fhirCode: '409519008',
  );

  /// value901005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value901005 = FacilityTypeCodeValueSet(
    fhirCode: '901005',
  );

  /// value2081004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value2081004 = FacilityTypeCodeValueSet(
    fhirCode: '2081004',
  );

  /// value59374000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value59374000 =
      FacilityTypeCodeValueSet(
    fhirCode: '59374000',
  );

  /// value413456002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value413456002 =
      FacilityTypeCodeValueSet(
    fhirCode: '413456002',
  );

  /// value413817003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value413817003 =
      FacilityTypeCodeValueSet(
    fhirCode: '413817003',
  );

  /// value310205006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value310205006 =
      FacilityTypeCodeValueSet(
    fhirCode: '310205006',
  );

  /// value419955002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value419955002 =
      FacilityTypeCodeValueSet(
    fhirCode: '419955002',
  );

  /// value272501009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value272501009 =
      FacilityTypeCodeValueSet(
    fhirCode: '272501009',
  );

  /// value394777002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FacilityTypeCodeValueSet value394777002 =
      FacilityTypeCodeValueSet(
    fhirCode: '394777002',
  );

  /// For instances where an Element is present but not value

  static final FacilityTypeCodeValueSet elementOnly =
      FacilityTypeCodeValueSet();

  /// List of all enum-like values
  static final List<FacilityTypeCodeValueSet> values = [
    value82242000,
    value225732001,
    value79993009,
    value32074000,
    value4322002,
    value224687002,
    value62480006,
    value80522000,
    value36125001,
    value48311003,
    value284546000,
    value42665001,
    value45618002,
    value418518002,
    value73770003,
    value69362002,
    value52668009,
    value360957003,
    value10206005,
    value37550003,
    value73644007,
    value31628002,
    value58482006,
    value90484001,
    value1814000,
    value22549003,
    value56293002,
    value360966004,
    value2849009,
    value14866005,
    value38238005,
    value56189001,
    value89972002,
    value78088001,
    value78001009,
    value23392004,
    value36293008,
    value3729002,
    value5584006,
    value37546005,
    value57159002,
    value331006,
    value50569004,
    value79491001,
    value33022008,
    value19602009,
    value39350007,
    value83891005,
    value394759007,
    value405607001,
    value309900005,
    value275576008,
    value10531005,
    value91154008,
    value41844007,
    value45899008,
    value51563005,
    value1773006,
    value72311000,
    value6827000,
    value309898008,
    value39913001,
    value77931003,
    value25681007,
    value20078004,
    value46224007,
    value81234003,
    value35971002,
    value11424001,
    value409519008,
    value901005,
    value2081004,
    value59374000,
    value413456002,
    value413817003,
    value310205006,
    value419955002,
    value272501009,
    value394777002,
  ];

  /// Returns the enum value with an element attached
  FacilityTypeCodeValueSet withElement(Element? newElement) {
    return FacilityTypeCodeValueSet(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [FacilityTypeCodeValueSet] from JSON.
  static FacilityTypeCodeValueSet fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FacilityTypeCodeValueSet.elementOnly.withElement(element);
    }
    return FacilityTypeCodeValueSet.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FacilityTypeCodeValueSet.$fhirCode';
}
