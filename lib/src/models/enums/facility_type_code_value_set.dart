// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This is the code representing the type of organizational setting where the clinical encounter, service, interaction, or treatment occurred. The value set used for Healthcare Facility Type has been defined by HITSP to be the value set reproduced from HITSP C80 Table 2-147.
class FacilityTypeCodeValueSet extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  FacilityTypeCodeValueSet._(super.value, [super.element]);

  /// Factory constructor to create [FacilityTypeCodeValueSet] from JSON.
  factory FacilityTypeCodeValueSet.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FacilityTypeCodeValueSet.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FacilityTypeCodeValueSet cannot be constructed from JSON.',
      );
    }
    return FacilityTypeCodeValueSet._(value, element);
  }

  /// value82242000
  static final FacilityTypeCodeValueSet value82242000 =
      FacilityTypeCodeValueSet._(
    '82242000',
  );

  /// value225732001
  static final FacilityTypeCodeValueSet value225732001 =
      FacilityTypeCodeValueSet._(
    '225732001',
  );

  /// value79993009
  static final FacilityTypeCodeValueSet value79993009 =
      FacilityTypeCodeValueSet._(
    '79993009',
  );

  /// value32074000
  static final FacilityTypeCodeValueSet value32074000 =
      FacilityTypeCodeValueSet._(
    '32074000',
  );

  /// value4322002
  static final FacilityTypeCodeValueSet value4322002 =
      FacilityTypeCodeValueSet._(
    '4322002',
  );

  /// value224687002
  static final FacilityTypeCodeValueSet value224687002 =
      FacilityTypeCodeValueSet._(
    '224687002',
  );

  /// value62480006
  static final FacilityTypeCodeValueSet value62480006 =
      FacilityTypeCodeValueSet._(
    '62480006',
  );

  /// value80522000
  static final FacilityTypeCodeValueSet value80522000 =
      FacilityTypeCodeValueSet._(
    '80522000',
  );

  /// value36125001
  static final FacilityTypeCodeValueSet value36125001 =
      FacilityTypeCodeValueSet._(
    '36125001',
  );

  /// value48311003
  static final FacilityTypeCodeValueSet value48311003 =
      FacilityTypeCodeValueSet._(
    '48311003',
  );

  /// value284546000
  static final FacilityTypeCodeValueSet value284546000 =
      FacilityTypeCodeValueSet._(
    '284546000',
  );

  /// value42665001
  static final FacilityTypeCodeValueSet value42665001 =
      FacilityTypeCodeValueSet._(
    '42665001',
  );

  /// value45618002
  static final FacilityTypeCodeValueSet value45618002 =
      FacilityTypeCodeValueSet._(
    '45618002',
  );

  /// value418518002
  static final FacilityTypeCodeValueSet value418518002 =
      FacilityTypeCodeValueSet._(
    '418518002',
  );

  /// value73770003
  static final FacilityTypeCodeValueSet value73770003 =
      FacilityTypeCodeValueSet._(
    '73770003',
  );

  /// value69362002
  static final FacilityTypeCodeValueSet value69362002 =
      FacilityTypeCodeValueSet._(
    '69362002',
  );

  /// value52668009
  static final FacilityTypeCodeValueSet value52668009 =
      FacilityTypeCodeValueSet._(
    '52668009',
  );

  /// value360957003
  static final FacilityTypeCodeValueSet value360957003 =
      FacilityTypeCodeValueSet._(
    '360957003',
  );

  /// value10206005
  static final FacilityTypeCodeValueSet value10206005 =
      FacilityTypeCodeValueSet._(
    '10206005',
  );

  /// value37550003
  static final FacilityTypeCodeValueSet value37550003 =
      FacilityTypeCodeValueSet._(
    '37550003',
  );

  /// value73644007
  static final FacilityTypeCodeValueSet value73644007 =
      FacilityTypeCodeValueSet._(
    '73644007',
  );

  /// value31628002
  static final FacilityTypeCodeValueSet value31628002 =
      FacilityTypeCodeValueSet._(
    '31628002',
  );

  /// value58482006
  static final FacilityTypeCodeValueSet value58482006 =
      FacilityTypeCodeValueSet._(
    '58482006',
  );

  /// value90484001
  static final FacilityTypeCodeValueSet value90484001 =
      FacilityTypeCodeValueSet._(
    '90484001',
  );

  /// value1814000
  static final FacilityTypeCodeValueSet value1814000 =
      FacilityTypeCodeValueSet._(
    '1814000',
  );

  /// value22549003
  static final FacilityTypeCodeValueSet value22549003 =
      FacilityTypeCodeValueSet._(
    '22549003',
  );

  /// value56293002
  static final FacilityTypeCodeValueSet value56293002 =
      FacilityTypeCodeValueSet._(
    '56293002',
  );

  /// value360966004
  static final FacilityTypeCodeValueSet value360966004 =
      FacilityTypeCodeValueSet._(
    '360966004',
  );

  /// value2849009
  static final FacilityTypeCodeValueSet value2849009 =
      FacilityTypeCodeValueSet._(
    '2849009',
  );

  /// value14866005
  static final FacilityTypeCodeValueSet value14866005 =
      FacilityTypeCodeValueSet._(
    '14866005',
  );

  /// value38238005
  static final FacilityTypeCodeValueSet value38238005 =
      FacilityTypeCodeValueSet._(
    '38238005',
  );

  /// value56189001
  static final FacilityTypeCodeValueSet value56189001 =
      FacilityTypeCodeValueSet._(
    '56189001',
  );

  /// value89972002
  static final FacilityTypeCodeValueSet value89972002 =
      FacilityTypeCodeValueSet._(
    '89972002',
  );

  /// value78088001
  static final FacilityTypeCodeValueSet value78088001 =
      FacilityTypeCodeValueSet._(
    '78088001',
  );

  /// value78001009
  static final FacilityTypeCodeValueSet value78001009 =
      FacilityTypeCodeValueSet._(
    '78001009',
  );

  /// value23392004
  static final FacilityTypeCodeValueSet value23392004 =
      FacilityTypeCodeValueSet._(
    '23392004',
  );

  /// value36293008
  static final FacilityTypeCodeValueSet value36293008 =
      FacilityTypeCodeValueSet._(
    '36293008',
  );

  /// value3729002
  static final FacilityTypeCodeValueSet value3729002 =
      FacilityTypeCodeValueSet._(
    '3729002',
  );

  /// value5584006
  static final FacilityTypeCodeValueSet value5584006 =
      FacilityTypeCodeValueSet._(
    '5584006',
  );

  /// value37546005
  static final FacilityTypeCodeValueSet value37546005 =
      FacilityTypeCodeValueSet._(
    '37546005',
  );

  /// value57159002
  static final FacilityTypeCodeValueSet value57159002 =
      FacilityTypeCodeValueSet._(
    '57159002',
  );

  /// value331006
  static final FacilityTypeCodeValueSet value331006 =
      FacilityTypeCodeValueSet._(
    '331006',
  );

  /// value50569004
  static final FacilityTypeCodeValueSet value50569004 =
      FacilityTypeCodeValueSet._(
    '50569004',
  );

  /// value79491001
  static final FacilityTypeCodeValueSet value79491001 =
      FacilityTypeCodeValueSet._(
    '79491001',
  );

  /// value33022008
  static final FacilityTypeCodeValueSet value33022008 =
      FacilityTypeCodeValueSet._(
    '33022008',
  );

  /// value19602009
  static final FacilityTypeCodeValueSet value19602009 =
      FacilityTypeCodeValueSet._(
    '19602009',
  );

  /// value39350007
  static final FacilityTypeCodeValueSet value39350007 =
      FacilityTypeCodeValueSet._(
    '39350007',
  );

  /// value83891005
  static final FacilityTypeCodeValueSet value83891005 =
      FacilityTypeCodeValueSet._(
    '83891005',
  );

  /// value394759007
  static final FacilityTypeCodeValueSet value394759007 =
      FacilityTypeCodeValueSet._(
    '394759007',
  );

  /// value405607001
  static final FacilityTypeCodeValueSet value405607001 =
      FacilityTypeCodeValueSet._(
    '405607001',
  );

  /// value309900005
  static final FacilityTypeCodeValueSet value309900005 =
      FacilityTypeCodeValueSet._(
    '309900005',
  );

  /// value275576008
  static final FacilityTypeCodeValueSet value275576008 =
      FacilityTypeCodeValueSet._(
    '275576008',
  );

  /// value10531005
  static final FacilityTypeCodeValueSet value10531005 =
      FacilityTypeCodeValueSet._(
    '10531005',
  );

  /// value91154008
  static final FacilityTypeCodeValueSet value91154008 =
      FacilityTypeCodeValueSet._(
    '91154008',
  );

  /// value41844007
  static final FacilityTypeCodeValueSet value41844007 =
      FacilityTypeCodeValueSet._(
    '41844007',
  );

  /// value45899008
  static final FacilityTypeCodeValueSet value45899008 =
      FacilityTypeCodeValueSet._(
    '45899008',
  );

  /// value51563005
  static final FacilityTypeCodeValueSet value51563005 =
      FacilityTypeCodeValueSet._(
    '51563005',
  );

  /// value1773006
  static final FacilityTypeCodeValueSet value1773006 =
      FacilityTypeCodeValueSet._(
    '1773006',
  );

  /// value72311000
  static final FacilityTypeCodeValueSet value72311000 =
      FacilityTypeCodeValueSet._(
    '72311000',
  );

  /// value6827000
  static final FacilityTypeCodeValueSet value6827000 =
      FacilityTypeCodeValueSet._(
    '6827000',
  );

  /// value309898008
  static final FacilityTypeCodeValueSet value309898008 =
      FacilityTypeCodeValueSet._(
    '309898008',
  );

  /// value39913001
  static final FacilityTypeCodeValueSet value39913001 =
      FacilityTypeCodeValueSet._(
    '39913001',
  );

  /// value77931003
  static final FacilityTypeCodeValueSet value77931003 =
      FacilityTypeCodeValueSet._(
    '77931003',
  );

  /// value25681007
  static final FacilityTypeCodeValueSet value25681007 =
      FacilityTypeCodeValueSet._(
    '25681007',
  );

  /// value20078004
  static final FacilityTypeCodeValueSet value20078004 =
      FacilityTypeCodeValueSet._(
    '20078004',
  );

  /// value46224007
  static final FacilityTypeCodeValueSet value46224007 =
      FacilityTypeCodeValueSet._(
    '46224007',
  );

  /// value81234003
  static final FacilityTypeCodeValueSet value81234003 =
      FacilityTypeCodeValueSet._(
    '81234003',
  );

  /// value35971002
  static final FacilityTypeCodeValueSet value35971002 =
      FacilityTypeCodeValueSet._(
    '35971002',
  );

  /// value11424001
  static final FacilityTypeCodeValueSet value11424001 =
      FacilityTypeCodeValueSet._(
    '11424001',
  );

  /// value409519008
  static final FacilityTypeCodeValueSet value409519008 =
      FacilityTypeCodeValueSet._(
    '409519008',
  );

  /// value901005
  static final FacilityTypeCodeValueSet value901005 =
      FacilityTypeCodeValueSet._(
    '901005',
  );

  /// value2081004
  static final FacilityTypeCodeValueSet value2081004 =
      FacilityTypeCodeValueSet._(
    '2081004',
  );

  /// value59374000
  static final FacilityTypeCodeValueSet value59374000 =
      FacilityTypeCodeValueSet._(
    '59374000',
  );

  /// value413456002
  static final FacilityTypeCodeValueSet value413456002 =
      FacilityTypeCodeValueSet._(
    '413456002',
  );

  /// value413817003
  static final FacilityTypeCodeValueSet value413817003 =
      FacilityTypeCodeValueSet._(
    '413817003',
  );

  /// value310205006
  static final FacilityTypeCodeValueSet value310205006 =
      FacilityTypeCodeValueSet._(
    '310205006',
  );

  /// value419955002
  static final FacilityTypeCodeValueSet value419955002 =
      FacilityTypeCodeValueSet._(
    '419955002',
  );

  /// value272501009
  static final FacilityTypeCodeValueSet value272501009 =
      FacilityTypeCodeValueSet._(
    '272501009',
  );

  /// value394777002
  static final FacilityTypeCodeValueSet value394777002 =
      FacilityTypeCodeValueSet._(
    '394777002',
  );

  /// For instances where an Element is present but not value

  static final FacilityTypeCodeValueSet elementOnly =
      FacilityTypeCodeValueSet._('');

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

  /// Clones the current instance
  @override
  FacilityTypeCodeValueSet clone() => FacilityTypeCodeValueSet._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FacilityTypeCodeValueSet withElement(Element? newElement) {
    return FacilityTypeCodeValueSet._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  FacilityTypeCodeValueSet copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return FacilityTypeCodeValueSet._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
