// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This is the code representing the type of organizational setting where the clinical encounter, service, interaction, or treatment occurred. The value set used for Healthcare Facility Type has been defined by HITSP to be the value set reproduced from HITSP C80 Table 2-147.
@Entity()
class FacilityTypeCodeValueSet extends FhirCode {
  /// Factory constructor to create [FacilityTypeCodeValueSet] from JSON.
  factory FacilityTypeCodeValueSet.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FacilityTypeCodeValueSet.elementOnly(element);
    }
    if (values.contains(value)) {
      return FacilityTypeCodeValueSet._(value, element);
    }
    throw ArgumentError(
      'FacilityTypeCodeValueSet.fromJson: JSON value is not a valid value',
    );
  }

  /// value82242000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value82242000([this.element])
      : dbValue = '82242000',
        super('82242000', element);

  /// value225732001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value225732001([this.element])
      : dbValue = '225732001',
        super('225732001', element);

  /// value79993009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value79993009([this.element])
      : dbValue = '79993009',
        super('79993009', element);

  /// value32074000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value32074000([this.element])
      : dbValue = '32074000',
        super('32074000', element);

  /// value4322002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value4322002([this.element])
      : dbValue = '4322002',
        super('4322002', element);

  /// value224687002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value224687002([this.element])
      : dbValue = '224687002',
        super('224687002', element);

  /// value62480006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value62480006([this.element])
      : dbValue = '62480006',
        super('62480006', element);

  /// value80522000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value80522000([this.element])
      : dbValue = '80522000',
        super('80522000', element);

  /// value36125001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value36125001([this.element])
      : dbValue = '36125001',
        super('36125001', element);

  /// value48311003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value48311003([this.element])
      : dbValue = '48311003',
        super('48311003', element);

  /// value284546000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value284546000([this.element])
      : dbValue = '284546000',
        super('284546000', element);

  /// value42665001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value42665001([this.element])
      : dbValue = '42665001',
        super('42665001', element);

  /// value45618002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value45618002([this.element])
      : dbValue = '45618002',
        super('45618002', element);

  /// value418518002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value418518002([this.element])
      : dbValue = '418518002',
        super('418518002', element);

  /// value73770003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value73770003([this.element])
      : dbValue = '73770003',
        super('73770003', element);

  /// value69362002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value69362002([this.element])
      : dbValue = '69362002',
        super('69362002', element);

  /// value52668009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value52668009([this.element])
      : dbValue = '52668009',
        super('52668009', element);

  /// value360957003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value360957003([this.element])
      : dbValue = '360957003',
        super('360957003', element);

  /// value10206005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value10206005([this.element])
      : dbValue = '10206005',
        super('10206005', element);

  /// value37550003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value37550003([this.element])
      : dbValue = '37550003',
        super('37550003', element);

  /// value73644007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value73644007([this.element])
      : dbValue = '73644007',
        super('73644007', element);

  /// value31628002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value31628002([this.element])
      : dbValue = '31628002',
        super('31628002', element);

  /// value58482006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value58482006([this.element])
      : dbValue = '58482006',
        super('58482006', element);

  /// value90484001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value90484001([this.element])
      : dbValue = '90484001',
        super('90484001', element);

  /// value1814000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value1814000([this.element])
      : dbValue = '1814000',
        super('1814000', element);

  /// value22549003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value22549003([this.element])
      : dbValue = '22549003',
        super('22549003', element);

  /// value56293002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value56293002([this.element])
      : dbValue = '56293002',
        super('56293002', element);

  /// value360966004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value360966004([this.element])
      : dbValue = '360966004',
        super('360966004', element);

  /// value2849009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value2849009([this.element])
      : dbValue = '2849009',
        super('2849009', element);

  /// value14866005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value14866005([this.element])
      : dbValue = '14866005',
        super('14866005', element);

  /// value38238005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value38238005([this.element])
      : dbValue = '38238005',
        super('38238005', element);

  /// value56189001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value56189001([this.element])
      : dbValue = '56189001',
        super('56189001', element);

  /// value89972002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value89972002([this.element])
      : dbValue = '89972002',
        super('89972002', element);

  /// value78088001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value78088001([this.element])
      : dbValue = '78088001',
        super('78088001', element);

  /// value78001009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value78001009([this.element])
      : dbValue = '78001009',
        super('78001009', element);

  /// value23392004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value23392004([this.element])
      : dbValue = '23392004',
        super('23392004', element);

  /// value36293008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value36293008([this.element])
      : dbValue = '36293008',
        super('36293008', element);

  /// value3729002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value3729002([this.element])
      : dbValue = '3729002',
        super('3729002', element);

  /// value5584006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value5584006([this.element])
      : dbValue = '5584006',
        super('5584006', element);

  /// value37546005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value37546005([this.element])
      : dbValue = '37546005',
        super('37546005', element);

  /// value57159002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value57159002([this.element])
      : dbValue = '57159002',
        super('57159002', element);

  /// value331006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value331006([this.element])
      : dbValue = '331006',
        super('331006', element);

  /// value50569004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value50569004([this.element])
      : dbValue = '50569004',
        super('50569004', element);

  /// value79491001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value79491001([this.element])
      : dbValue = '79491001',
        super('79491001', element);

  /// value33022008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value33022008([this.element])
      : dbValue = '33022008',
        super('33022008', element);

  /// value19602009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value19602009([this.element])
      : dbValue = '19602009',
        super('19602009', element);

  /// value39350007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value39350007([this.element])
      : dbValue = '39350007',
        super('39350007', element);

  /// value83891005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value83891005([this.element])
      : dbValue = '83891005',
        super('83891005', element);

  /// value394759007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value394759007([this.element])
      : dbValue = '394759007',
        super('394759007', element);

  /// value405607001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value405607001([this.element])
      : dbValue = '405607001',
        super('405607001', element);

  /// value309900005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value309900005([this.element])
      : dbValue = '309900005',
        super('309900005', element);

  /// value275576008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value275576008([this.element])
      : dbValue = '275576008',
        super('275576008', element);

  /// value10531005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value10531005([this.element])
      : dbValue = '10531005',
        super('10531005', element);

  /// value91154008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value91154008([this.element])
      : dbValue = '91154008',
        super('91154008', element);

  /// value41844007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value41844007([this.element])
      : dbValue = '41844007',
        super('41844007', element);

  /// value45899008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value45899008([this.element])
      : dbValue = '45899008',
        super('45899008', element);

  /// value51563005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value51563005([this.element])
      : dbValue = '51563005',
        super('51563005', element);

  /// value1773006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value1773006([this.element])
      : dbValue = '1773006',
        super('1773006', element);

  /// value72311000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value72311000([this.element])
      : dbValue = '72311000',
        super('72311000', element);

  /// value6827000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value6827000([this.element])
      : dbValue = '6827000',
        super('6827000', element);

  /// value309898008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value309898008([this.element])
      : dbValue = '309898008',
        super('309898008', element);

  /// value39913001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value39913001([this.element])
      : dbValue = '39913001',
        super('39913001', element);

  /// value77931003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value77931003([this.element])
      : dbValue = '77931003',
        super('77931003', element);

  /// value25681007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value25681007([this.element])
      : dbValue = '25681007',
        super('25681007', element);

  /// value20078004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value20078004([this.element])
      : dbValue = '20078004',
        super('20078004', element);

  /// value46224007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value46224007([this.element])
      : dbValue = '46224007',
        super('46224007', element);

  /// value81234003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value81234003([this.element])
      : dbValue = '81234003',
        super('81234003', element);

  /// value35971002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value35971002([this.element])
      : dbValue = '35971002',
        super('35971002', element);

  /// value11424001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value11424001([this.element])
      : dbValue = '11424001',
        super('11424001', element);

  /// value409519008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value409519008([this.element])
      : dbValue = '409519008',
        super('409519008', element);

  /// value901005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value901005([this.element])
      : dbValue = '901005',
        super('901005', element);

  /// value2081004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value2081004([this.element])
      : dbValue = '2081004',
        super('2081004', element);

  /// value59374000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value59374000([this.element])
      : dbValue = '59374000',
        super('59374000', element);

  /// value413456002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value413456002([this.element])
      : dbValue = '413456002',
        super('413456002', element);

  /// value413817003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value413817003([this.element])
      : dbValue = '413817003',
        super('413817003', element);

  /// value310205006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value310205006([this.element])
      : dbValue = '310205006',
        super('310205006', element);

  /// value419955002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value419955002([this.element])
      : dbValue = '419955002',
        super('419955002', element);

  /// value272501009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value272501009([this.element])
      : dbValue = '272501009',
        super('272501009', element);

  /// value394777002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FacilityTypeCodeValueSet.value394777002([this.element])
      : dbValue = '394777002',
        super('394777002', element);

  /// For instances where an Element is present but not value

  FacilityTypeCodeValueSet.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  FacilityTypeCodeValueSet._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    '82242000',
    '225732001',
    '79993009',
    '32074000',
    '4322002',
    '224687002',
    '62480006',
    '80522000',
    '36125001',
    '48311003',
    '284546000',
    '42665001',
    '45618002',
    '418518002',
    '73770003',
    '69362002',
    '52668009',
    '360957003',
    '10206005',
    '37550003',
    '73644007',
    '31628002',
    '58482006',
    '90484001',
    '1814000',
    '22549003',
    '56293002',
    '360966004',
    '2849009',
    '14866005',
    '38238005',
    '56189001',
    '89972002',
    '78088001',
    '78001009',
    '23392004',
    '36293008',
    '3729002',
    '5584006',
    '37546005',
    '57159002',
    '331006',
    '50569004',
    '79491001',
    '33022008',
    '19602009',
    '39350007',
    '83891005',
    '394759007',
    '405607001',
    '309900005',
    '275576008',
    '10531005',
    '91154008',
    '41844007',
    '45899008',
    '51563005',
    '1773006',
    '72311000',
    '6827000',
    '309898008',
    '39913001',
    '77931003',
    '25681007',
    '20078004',
    '46224007',
    '81234003',
    '35971002',
    '11424001',
    '409519008',
    '901005',
    '2081004',
    '59374000',
    '413456002',
    '413817003',
    '310205006',
    '419955002',
    '272501009',
    '394777002',
  ];

  /// Returns the enum value with an element attached
  FacilityTypeCodeValueSet withElement(Element? newElement) {
    return FacilityTypeCodeValueSet._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FacilityTypeCodeValueSet.$value';
}
