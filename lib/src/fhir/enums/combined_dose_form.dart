// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Dose forms for a product as a whole, considering all individual parts, but before any mixing
@Entity()
class CombinedDoseForm extends FhirCode {
  /// Factory constructor to create [CombinedDoseForm] from JSON.
  factory CombinedDoseForm.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CombinedDoseForm.elementOnly(element);
    }
    if (values.contains(value)) {
      return CombinedDoseForm._(value, element);
    }
    throw ArgumentError(
      'CombinedDoseForm.fromJson: JSON value is not a valid value',
    );
  }

  /// value100000073366
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000073366([this.element])
      : dbValue = '100000073366',
        super('100000073366', element);

  /// value100000073651
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000073651([this.element])
      : dbValue = '100000073651',
        super('100000073651', element);

  /// value100000073774
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000073774([this.element])
      : dbValue = '100000073774',
        super('100000073774', element);

  /// value100000073781
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000073781([this.element])
      : dbValue = '100000073781',
        super('100000073781', element);

  /// value100000073801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000073801([this.element])
      : dbValue = '100000073801',
        super('100000073801', element);

  /// value100000073860
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000073860([this.element])
      : dbValue = '100000073860',
        super('100000073860', element);

  /// value100000073868
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000073868([this.element])
      : dbValue = '100000073868',
        super('100000073868', element);

  /// value100000073869
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000073869([this.element])
      : dbValue = '100000073869',
        super('100000073869', element);

  /// value100000073884
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000073884([this.element])
      : dbValue = '100000073884',
        super('100000073884', element);

  /// value100000073891
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000073891([this.element])
      : dbValue = '100000073891',
        super('100000073891', element);

  /// value100000073892
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000073892([this.element])
      : dbValue = '100000073892',
        super('100000073892', element);

  /// value100000073941
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000073941([this.element])
      : dbValue = '100000073941',
        super('100000073941', element);

  /// value100000073972
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000073972([this.element])
      : dbValue = '100000073972',
        super('100000073972', element);

  /// value100000073973
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000073973([this.element])
      : dbValue = '100000073973',
        super('100000073973', element);

  /// value100000073974
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000073974([this.element])
      : dbValue = '100000073974',
        super('100000073974', element);

  /// value100000073975
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000073975([this.element])
      : dbValue = '100000073975',
        super('100000073975', element);

  /// value100000073987
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000073987([this.element])
      : dbValue = '100000073987',
        super('100000073987', element);

  /// value100000073988
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000073988([this.element])
      : dbValue = '100000073988',
        super('100000073988', element);

  /// value100000073989
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000073989([this.element])
      : dbValue = '100000073989',
        super('100000073989', element);

  /// value100000073990
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000073990([this.element])
      : dbValue = '100000073990',
        super('100000073990', element);

  /// value100000073999
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000073999([this.element])
      : dbValue = '100000073999',
        super('100000073999', element);

  /// value100000074015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000074015([this.element])
      : dbValue = '100000074015',
        super('100000074015', element);

  /// value100000074016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000074016([this.element])
      : dbValue = '100000074016',
        super('100000074016', element);

  /// value100000074017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000074017([this.element])
      : dbValue = '100000074017',
        super('100000074017', element);

  /// value100000074018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000074018([this.element])
      : dbValue = '100000074018',
        super('100000074018', element);

  /// value100000074030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000074030([this.element])
      : dbValue = '100000074030',
        super('100000074030', element);

  /// value100000074031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000074031([this.element])
      : dbValue = '100000074031',
        super('100000074031', element);

  /// value100000074032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000074032([this.element])
      : dbValue = '100000074032',
        super('100000074032', element);

  /// value100000074048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000074048([this.element])
      : dbValue = '100000074048',
        super('100000074048', element);

  /// value100000074051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000074051([this.element])
      : dbValue = '100000074051',
        super('100000074051', element);

  /// value100000074053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000074053([this.element])
      : dbValue = '100000074053',
        super('100000074053', element);

  /// value100000074056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000074056([this.element])
      : dbValue = '100000074056',
        super('100000074056', element);

  /// value100000074057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000074057([this.element])
      : dbValue = '100000074057',
        super('100000074057', element);

  /// value100000074061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000074061([this.element])
      : dbValue = '100000074061',
        super('100000074061', element);

  /// value100000074064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000074064([this.element])
      : dbValue = '100000074064',
        super('100000074064', element);

  /// value100000075580
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000075580([this.element])
      : dbValue = '100000075580',
        super('100000075580', element);

  /// value100000075584
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000075584([this.element])
      : dbValue = '100000075584',
        super('100000075584', element);

  /// value100000075587
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000075587([this.element])
      : dbValue = '100000075587',
        super('100000075587', element);

  /// value100000116137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000116137([this.element])
      : dbValue = '100000116137',
        super('100000116137', element);

  /// value100000116141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000116141([this.element])
      : dbValue = '100000116141',
        super('100000116141', element);

  /// value100000116155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000116155([this.element])
      : dbValue = '100000116155',
        super('100000116155', element);

  /// value100000116160
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000116160([this.element])
      : dbValue = '100000116160',
        super('100000116160', element);

  /// value100000116172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000116172([this.element])
      : dbValue = '100000116172',
        super('100000116172', element);

  /// value100000116173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000116173([this.element])
      : dbValue = '100000116173',
        super('100000116173', element);

  /// value100000116174
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000116174([this.element])
      : dbValue = '100000116174',
        super('100000116174', element);

  /// value100000116175
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000116175([this.element])
      : dbValue = '100000116175',
        super('100000116175', element);

  /// value100000116176
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000116176([this.element])
      : dbValue = '100000116176',
        super('100000116176', element);

  /// value100000116177
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000116177([this.element])
      : dbValue = '100000116177',
        super('100000116177', element);

  /// value100000116179
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000116179([this.element])
      : dbValue = '100000116179',
        super('100000116179', element);

  /// value100000125746
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000125746([this.element])
      : dbValue = '100000125746',
        super('100000125746', element);

  /// value100000125747
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000125747([this.element])
      : dbValue = '100000125747',
        super('100000125747', element);

  /// value100000125777
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000125777([this.element])
      : dbValue = '100000125777',
        super('100000125777', element);

  /// value100000136318
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000136318([this.element])
      : dbValue = '100000136318',
        super('100000136318', element);

  /// value100000136325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000136325([this.element])
      : dbValue = '100000136325',
        super('100000136325', element);

  /// value100000136558
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000136558([this.element])
      : dbValue = '100000136558',
        super('100000136558', element);

  /// value100000136560
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000136560([this.element])
      : dbValue = '100000136560',
        super('100000136560', element);

  /// value100000136907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000136907([this.element])
      : dbValue = '100000136907',
        super('100000136907', element);

  /// value100000143502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000143502([this.element])
      : dbValue = '100000143502',
        super('100000143502', element);

  /// value100000143546
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000143546([this.element])
      : dbValue = '100000143546',
        super('100000143546', element);

  /// value100000143552
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000143552([this.element])
      : dbValue = '100000143552',
        super('100000143552', element);

  /// value100000156068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000156068([this.element])
      : dbValue = '100000156068',
        super('100000156068', element);

  /// value100000157796
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000157796([this.element])
      : dbValue = '100000157796',
        super('100000157796', element);

  /// value100000164467
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000164467([this.element])
      : dbValue = '100000164467',
        super('100000164467', element);

  /// value100000169997
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000169997([this.element])
      : dbValue = '100000169997',
        super('100000169997', element);

  /// value100000170588
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000170588([this.element])
      : dbValue = '100000170588',
        super('100000170588', element);

  /// value100000171127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000171127([this.element])
      : dbValue = '100000171127',
        super('100000171127', element);

  /// value100000171193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000171193([this.element])
      : dbValue = '100000171193',
        super('100000171193', element);

  /// value100000171238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000171238([this.element])
      : dbValue = '100000171238',
        super('100000171238', element);

  /// value100000171935
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000171935([this.element])
      : dbValue = '100000171935',
        super('100000171935', element);

  /// value100000174065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value100000174065([this.element])
      : dbValue = '100000174065',
        super('100000174065', element);

  /// value200000002161
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value200000002161([this.element])
      : dbValue = '200000002161',
        super('200000002161', element);

  /// value200000002287
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value200000002287([this.element])
      : dbValue = '200000002287',
        super('200000002287', element);

  /// value200000004201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value200000004201([this.element])
      : dbValue = '200000004201',
        super('200000004201', element);

  /// value200000004819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value200000004819([this.element])
      : dbValue = '200000004819',
        super('200000004819', element);

  /// value200000004820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value200000004820([this.element])
      : dbValue = '200000004820',
        super('200000004820', element);

  /// value200000005547
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value200000005547([this.element])
      : dbValue = '200000005547',
        super('200000005547', element);

  /// value200000010382
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CombinedDoseForm.value200000010382([this.element])
      : dbValue = '200000010382',
        super('200000010382', element);

  /// For instances where an Element is present but not value

  CombinedDoseForm.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CombinedDoseForm._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    '100000073366',
    '100000073651',
    '100000073774',
    '100000073781',
    '100000073801',
    '100000073860',
    '100000073868',
    '100000073869',
    '100000073884',
    '100000073891',
    '100000073892',
    '100000073941',
    '100000073972',
    '100000073973',
    '100000073974',
    '100000073975',
    '100000073987',
    '100000073988',
    '100000073989',
    '100000073990',
    '100000073999',
    '100000074015',
    '100000074016',
    '100000074017',
    '100000074018',
    '100000074030',
    '100000074031',
    '100000074032',
    '100000074048',
    '100000074051',
    '100000074053',
    '100000074056',
    '100000074057',
    '100000074061',
    '100000074064',
    '100000075580',
    '100000075584',
    '100000075587',
    '100000116137',
    '100000116141',
    '100000116155',
    '100000116160',
    '100000116172',
    '100000116173',
    '100000116174',
    '100000116175',
    '100000116176',
    '100000116177',
    '100000116179',
    '100000125746',
    '100000125747',
    '100000125777',
    '100000136318',
    '100000136325',
    '100000136558',
    '100000136560',
    '100000136907',
    '100000143502',
    '100000143546',
    '100000143552',
    '100000156068',
    '100000157796',
    '100000164467',
    '100000169997',
    '100000170588',
    '100000171127',
    '100000171193',
    '100000171238',
    '100000171935',
    '100000174065',
    '200000002161',
    '200000002287',
    '200000004201',
    '200000004819',
    '200000004820',
    '200000005547',
    '200000010382',
  ];

  /// Returns the enum value with an element attached
  CombinedDoseForm withElement(Element? newElement) {
    return CombinedDoseForm._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CombinedDoseForm.$value';
}
