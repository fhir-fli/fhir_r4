// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Dose forms for a product as a whole, considering all individual parts, but before any mixing
@collection
class CombinedDoseForm {
  /// Constructor for internal use (like enum)
  CombinedDoseForm({this.fhirCode, this.element})
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

  /// CombinedDoseForm values
  /// value100000073366
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000073366 = CombinedDoseForm(
    fhirCode: '100000073366',
  );

  /// value100000073651
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000073651 = CombinedDoseForm(
    fhirCode: '100000073651',
  );

  /// value100000073774
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000073774 = CombinedDoseForm(
    fhirCode: '100000073774',
  );

  /// value100000073781
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000073781 = CombinedDoseForm(
    fhirCode: '100000073781',
  );

  /// value100000073801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000073801 = CombinedDoseForm(
    fhirCode: '100000073801',
  );

  /// value100000073860
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000073860 = CombinedDoseForm(
    fhirCode: '100000073860',
  );

  /// value100000073868
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000073868 = CombinedDoseForm(
    fhirCode: '100000073868',
  );

  /// value100000073869
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000073869 = CombinedDoseForm(
    fhirCode: '100000073869',
  );

  /// value100000073884
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000073884 = CombinedDoseForm(
    fhirCode: '100000073884',
  );

  /// value100000073891
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000073891 = CombinedDoseForm(
    fhirCode: '100000073891',
  );

  /// value100000073892
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000073892 = CombinedDoseForm(
    fhirCode: '100000073892',
  );

  /// value100000073941
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000073941 = CombinedDoseForm(
    fhirCode: '100000073941',
  );

  /// value100000073972
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000073972 = CombinedDoseForm(
    fhirCode: '100000073972',
  );

  /// value100000073973
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000073973 = CombinedDoseForm(
    fhirCode: '100000073973',
  );

  /// value100000073974
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000073974 = CombinedDoseForm(
    fhirCode: '100000073974',
  );

  /// value100000073975
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000073975 = CombinedDoseForm(
    fhirCode: '100000073975',
  );

  /// value100000073987
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000073987 = CombinedDoseForm(
    fhirCode: '100000073987',
  );

  /// value100000073988
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000073988 = CombinedDoseForm(
    fhirCode: '100000073988',
  );

  /// value100000073989
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000073989 = CombinedDoseForm(
    fhirCode: '100000073989',
  );

  /// value100000073990
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000073990 = CombinedDoseForm(
    fhirCode: '100000073990',
  );

  /// value100000073999
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000073999 = CombinedDoseForm(
    fhirCode: '100000073999',
  );

  /// value100000074015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000074015 = CombinedDoseForm(
    fhirCode: '100000074015',
  );

  /// value100000074016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000074016 = CombinedDoseForm(
    fhirCode: '100000074016',
  );

  /// value100000074017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000074017 = CombinedDoseForm(
    fhirCode: '100000074017',
  );

  /// value100000074018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000074018 = CombinedDoseForm(
    fhirCode: '100000074018',
  );

  /// value100000074030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000074030 = CombinedDoseForm(
    fhirCode: '100000074030',
  );

  /// value100000074031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000074031 = CombinedDoseForm(
    fhirCode: '100000074031',
  );

  /// value100000074032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000074032 = CombinedDoseForm(
    fhirCode: '100000074032',
  );

  /// value100000074048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000074048 = CombinedDoseForm(
    fhirCode: '100000074048',
  );

  /// value100000074051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000074051 = CombinedDoseForm(
    fhirCode: '100000074051',
  );

  /// value100000074053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000074053 = CombinedDoseForm(
    fhirCode: '100000074053',
  );

  /// value100000074056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000074056 = CombinedDoseForm(
    fhirCode: '100000074056',
  );

  /// value100000074057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000074057 = CombinedDoseForm(
    fhirCode: '100000074057',
  );

  /// value100000074061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000074061 = CombinedDoseForm(
    fhirCode: '100000074061',
  );

  /// value100000074064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000074064 = CombinedDoseForm(
    fhirCode: '100000074064',
  );

  /// value100000075580
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000075580 = CombinedDoseForm(
    fhirCode: '100000075580',
  );

  /// value100000075584
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000075584 = CombinedDoseForm(
    fhirCode: '100000075584',
  );

  /// value100000075587
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000075587 = CombinedDoseForm(
    fhirCode: '100000075587',
  );

  /// value100000116137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000116137 = CombinedDoseForm(
    fhirCode: '100000116137',
  );

  /// value100000116141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000116141 = CombinedDoseForm(
    fhirCode: '100000116141',
  );

  /// value100000116155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000116155 = CombinedDoseForm(
    fhirCode: '100000116155',
  );

  /// value100000116160
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000116160 = CombinedDoseForm(
    fhirCode: '100000116160',
  );

  /// value100000116172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000116172 = CombinedDoseForm(
    fhirCode: '100000116172',
  );

  /// value100000116173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000116173 = CombinedDoseForm(
    fhirCode: '100000116173',
  );

  /// value100000116174
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000116174 = CombinedDoseForm(
    fhirCode: '100000116174',
  );

  /// value100000116175
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000116175 = CombinedDoseForm(
    fhirCode: '100000116175',
  );

  /// value100000116176
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000116176 = CombinedDoseForm(
    fhirCode: '100000116176',
  );

  /// value100000116177
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000116177 = CombinedDoseForm(
    fhirCode: '100000116177',
  );

  /// value100000116179
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000116179 = CombinedDoseForm(
    fhirCode: '100000116179',
  );

  /// value100000125746
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000125746 = CombinedDoseForm(
    fhirCode: '100000125746',
  );

  /// value100000125747
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000125747 = CombinedDoseForm(
    fhirCode: '100000125747',
  );

  /// value100000125777
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000125777 = CombinedDoseForm(
    fhirCode: '100000125777',
  );

  /// value100000136318
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000136318 = CombinedDoseForm(
    fhirCode: '100000136318',
  );

  /// value100000136325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000136325 = CombinedDoseForm(
    fhirCode: '100000136325',
  );

  /// value100000136558
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000136558 = CombinedDoseForm(
    fhirCode: '100000136558',
  );

  /// value100000136560
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000136560 = CombinedDoseForm(
    fhirCode: '100000136560',
  );

  /// value100000136907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000136907 = CombinedDoseForm(
    fhirCode: '100000136907',
  );

  /// value100000143502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000143502 = CombinedDoseForm(
    fhirCode: '100000143502',
  );

  /// value100000143546
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000143546 = CombinedDoseForm(
    fhirCode: '100000143546',
  );

  /// value100000143552
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000143552 = CombinedDoseForm(
    fhirCode: '100000143552',
  );

  /// value100000156068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000156068 = CombinedDoseForm(
    fhirCode: '100000156068',
  );

  /// value100000157796
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000157796 = CombinedDoseForm(
    fhirCode: '100000157796',
  );

  /// value100000164467
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000164467 = CombinedDoseForm(
    fhirCode: '100000164467',
  );

  /// value100000169997
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000169997 = CombinedDoseForm(
    fhirCode: '100000169997',
  );

  /// value100000170588
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000170588 = CombinedDoseForm(
    fhirCode: '100000170588',
  );

  /// value100000171127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000171127 = CombinedDoseForm(
    fhirCode: '100000171127',
  );

  /// value100000171193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000171193 = CombinedDoseForm(
    fhirCode: '100000171193',
  );

  /// value100000171238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000171238 = CombinedDoseForm(
    fhirCode: '100000171238',
  );

  /// value100000171935
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000171935 = CombinedDoseForm(
    fhirCode: '100000171935',
  );

  /// value100000174065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value100000174065 = CombinedDoseForm(
    fhirCode: '100000174065',
  );

  /// value200000002161
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value200000002161 = CombinedDoseForm(
    fhirCode: '200000002161',
  );

  /// value200000002287
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value200000002287 = CombinedDoseForm(
    fhirCode: '200000002287',
  );

  /// value200000004201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value200000004201 = CombinedDoseForm(
    fhirCode: '200000004201',
  );

  /// value200000004819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value200000004819 = CombinedDoseForm(
    fhirCode: '200000004819',
  );

  /// value200000004820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value200000004820 = CombinedDoseForm(
    fhirCode: '200000004820',
  );

  /// value200000005547
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value200000005547 = CombinedDoseForm(
    fhirCode: '200000005547',
  );

  /// value200000010382
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CombinedDoseForm value200000010382 = CombinedDoseForm(
    fhirCode: '200000010382',
  );

  /// For instances where an Element is present but not value

  static final CombinedDoseForm elementOnly = CombinedDoseForm();

  /// List of all enum-like values
  static final List<CombinedDoseForm> values = [
    value100000073366,
    value100000073651,
    value100000073774,
    value100000073781,
    value100000073801,
    value100000073860,
    value100000073868,
    value100000073869,
    value100000073884,
    value100000073891,
    value100000073892,
    value100000073941,
    value100000073972,
    value100000073973,
    value100000073974,
    value100000073975,
    value100000073987,
    value100000073988,
    value100000073989,
    value100000073990,
    value100000073999,
    value100000074015,
    value100000074016,
    value100000074017,
    value100000074018,
    value100000074030,
    value100000074031,
    value100000074032,
    value100000074048,
    value100000074051,
    value100000074053,
    value100000074056,
    value100000074057,
    value100000074061,
    value100000074064,
    value100000075580,
    value100000075584,
    value100000075587,
    value100000116137,
    value100000116141,
    value100000116155,
    value100000116160,
    value100000116172,
    value100000116173,
    value100000116174,
    value100000116175,
    value100000116176,
    value100000116177,
    value100000116179,
    value100000125746,
    value100000125747,
    value100000125777,
    value100000136318,
    value100000136325,
    value100000136558,
    value100000136560,
    value100000136907,
    value100000143502,
    value100000143546,
    value100000143552,
    value100000156068,
    value100000157796,
    value100000164467,
    value100000169997,
    value100000170588,
    value100000171127,
    value100000171193,
    value100000171238,
    value100000171935,
    value100000174065,
    value200000002161,
    value200000002287,
    value200000004201,
    value200000004819,
    value200000004820,
    value200000005547,
    value200000010382,
  ];

  /// Returns the enum value with an element attached
  CombinedDoseForm withElement(Element? newElement) {
    return CombinedDoseForm(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CombinedDoseForm] from JSON.
  static CombinedDoseForm fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CombinedDoseForm.elementOnly.withElement(element);
    }
    return CombinedDoseForm.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CombinedDoseForm.$fhirCode';
}
