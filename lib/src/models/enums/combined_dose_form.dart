// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Dose forms for a product as a whole, considering all individual parts, but before any mixing
class CombinedDoseForm extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CombinedDoseForm._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [CombinedDoseForm] from JSON.
  factory CombinedDoseForm.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CombinedDoseForm.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CombinedDoseForm cannot be constructed from JSON.',
      );
    }
    return CombinedDoseForm._(value: value, element: element);
  }

  /// value100000073366
  static final CombinedDoseForm value100000073366 = CombinedDoseForm._(
    value: '100000073366',
  );

  /// value100000073651
  static final CombinedDoseForm value100000073651 = CombinedDoseForm._(
    value: '100000073651',
  );

  /// value100000073774
  static final CombinedDoseForm value100000073774 = CombinedDoseForm._(
    value: '100000073774',
  );

  /// value100000073781
  static final CombinedDoseForm value100000073781 = CombinedDoseForm._(
    value: '100000073781',
  );

  /// value100000073801
  static final CombinedDoseForm value100000073801 = CombinedDoseForm._(
    value: '100000073801',
  );

  /// value100000073860
  static final CombinedDoseForm value100000073860 = CombinedDoseForm._(
    value: '100000073860',
  );

  /// value100000073868
  static final CombinedDoseForm value100000073868 = CombinedDoseForm._(
    value: '100000073868',
  );

  /// value100000073869
  static final CombinedDoseForm value100000073869 = CombinedDoseForm._(
    value: '100000073869',
  );

  /// value100000073884
  static final CombinedDoseForm value100000073884 = CombinedDoseForm._(
    value: '100000073884',
  );

  /// value100000073891
  static final CombinedDoseForm value100000073891 = CombinedDoseForm._(
    value: '100000073891',
  );

  /// value100000073892
  static final CombinedDoseForm value100000073892 = CombinedDoseForm._(
    value: '100000073892',
  );

  /// value100000073941
  static final CombinedDoseForm value100000073941 = CombinedDoseForm._(
    value: '100000073941',
  );

  /// value100000073972
  static final CombinedDoseForm value100000073972 = CombinedDoseForm._(
    value: '100000073972',
  );

  /// value100000073973
  static final CombinedDoseForm value100000073973 = CombinedDoseForm._(
    value: '100000073973',
  );

  /// value100000073974
  static final CombinedDoseForm value100000073974 = CombinedDoseForm._(
    value: '100000073974',
  );

  /// value100000073975
  static final CombinedDoseForm value100000073975 = CombinedDoseForm._(
    value: '100000073975',
  );

  /// value100000073987
  static final CombinedDoseForm value100000073987 = CombinedDoseForm._(
    value: '100000073987',
  );

  /// value100000073988
  static final CombinedDoseForm value100000073988 = CombinedDoseForm._(
    value: '100000073988',
  );

  /// value100000073989
  static final CombinedDoseForm value100000073989 = CombinedDoseForm._(
    value: '100000073989',
  );

  /// value100000073990
  static final CombinedDoseForm value100000073990 = CombinedDoseForm._(
    value: '100000073990',
  );

  /// value100000073999
  static final CombinedDoseForm value100000073999 = CombinedDoseForm._(
    value: '100000073999',
  );

  /// value100000074015
  static final CombinedDoseForm value100000074015 = CombinedDoseForm._(
    value: '100000074015',
  );

  /// value100000074016
  static final CombinedDoseForm value100000074016 = CombinedDoseForm._(
    value: '100000074016',
  );

  /// value100000074017
  static final CombinedDoseForm value100000074017 = CombinedDoseForm._(
    value: '100000074017',
  );

  /// value100000074018
  static final CombinedDoseForm value100000074018 = CombinedDoseForm._(
    value: '100000074018',
  );

  /// value100000074030
  static final CombinedDoseForm value100000074030 = CombinedDoseForm._(
    value: '100000074030',
  );

  /// value100000074031
  static final CombinedDoseForm value100000074031 = CombinedDoseForm._(
    value: '100000074031',
  );

  /// value100000074032
  static final CombinedDoseForm value100000074032 = CombinedDoseForm._(
    value: '100000074032',
  );

  /// value100000074048
  static final CombinedDoseForm value100000074048 = CombinedDoseForm._(
    value: '100000074048',
  );

  /// value100000074051
  static final CombinedDoseForm value100000074051 = CombinedDoseForm._(
    value: '100000074051',
  );

  /// value100000074053
  static final CombinedDoseForm value100000074053 = CombinedDoseForm._(
    value: '100000074053',
  );

  /// value100000074056
  static final CombinedDoseForm value100000074056 = CombinedDoseForm._(
    value: '100000074056',
  );

  /// value100000074057
  static final CombinedDoseForm value100000074057 = CombinedDoseForm._(
    value: '100000074057',
  );

  /// value100000074061
  static final CombinedDoseForm value100000074061 = CombinedDoseForm._(
    value: '100000074061',
  );

  /// value100000074064
  static final CombinedDoseForm value100000074064 = CombinedDoseForm._(
    value: '100000074064',
  );

  /// value100000075580
  static final CombinedDoseForm value100000075580 = CombinedDoseForm._(
    value: '100000075580',
  );

  /// value100000075584
  static final CombinedDoseForm value100000075584 = CombinedDoseForm._(
    value: '100000075584',
  );

  /// value100000075587
  static final CombinedDoseForm value100000075587 = CombinedDoseForm._(
    value: '100000075587',
  );

  /// value100000116137
  static final CombinedDoseForm value100000116137 = CombinedDoseForm._(
    value: '100000116137',
  );

  /// value100000116141
  static final CombinedDoseForm value100000116141 = CombinedDoseForm._(
    value: '100000116141',
  );

  /// value100000116155
  static final CombinedDoseForm value100000116155 = CombinedDoseForm._(
    value: '100000116155',
  );

  /// value100000116160
  static final CombinedDoseForm value100000116160 = CombinedDoseForm._(
    value: '100000116160',
  );

  /// value100000116172
  static final CombinedDoseForm value100000116172 = CombinedDoseForm._(
    value: '100000116172',
  );

  /// value100000116173
  static final CombinedDoseForm value100000116173 = CombinedDoseForm._(
    value: '100000116173',
  );

  /// value100000116174
  static final CombinedDoseForm value100000116174 = CombinedDoseForm._(
    value: '100000116174',
  );

  /// value100000116175
  static final CombinedDoseForm value100000116175 = CombinedDoseForm._(
    value: '100000116175',
  );

  /// value100000116176
  static final CombinedDoseForm value100000116176 = CombinedDoseForm._(
    value: '100000116176',
  );

  /// value100000116177
  static final CombinedDoseForm value100000116177 = CombinedDoseForm._(
    value: '100000116177',
  );

  /// value100000116179
  static final CombinedDoseForm value100000116179 = CombinedDoseForm._(
    value: '100000116179',
  );

  /// value100000125746
  static final CombinedDoseForm value100000125746 = CombinedDoseForm._(
    value: '100000125746',
  );

  /// value100000125747
  static final CombinedDoseForm value100000125747 = CombinedDoseForm._(
    value: '100000125747',
  );

  /// value100000125777
  static final CombinedDoseForm value100000125777 = CombinedDoseForm._(
    value: '100000125777',
  );

  /// value100000136318
  static final CombinedDoseForm value100000136318 = CombinedDoseForm._(
    value: '100000136318',
  );

  /// value100000136325
  static final CombinedDoseForm value100000136325 = CombinedDoseForm._(
    value: '100000136325',
  );

  /// value100000136558
  static final CombinedDoseForm value100000136558 = CombinedDoseForm._(
    value: '100000136558',
  );

  /// value100000136560
  static final CombinedDoseForm value100000136560 = CombinedDoseForm._(
    value: '100000136560',
  );

  /// value100000136907
  static final CombinedDoseForm value100000136907 = CombinedDoseForm._(
    value: '100000136907',
  );

  /// value100000143502
  static final CombinedDoseForm value100000143502 = CombinedDoseForm._(
    value: '100000143502',
  );

  /// value100000143546
  static final CombinedDoseForm value100000143546 = CombinedDoseForm._(
    value: '100000143546',
  );

  /// value100000143552
  static final CombinedDoseForm value100000143552 = CombinedDoseForm._(
    value: '100000143552',
  );

  /// value100000156068
  static final CombinedDoseForm value100000156068 = CombinedDoseForm._(
    value: '100000156068',
  );

  /// value100000157796
  static final CombinedDoseForm value100000157796 = CombinedDoseForm._(
    value: '100000157796',
  );

  /// value100000164467
  static final CombinedDoseForm value100000164467 = CombinedDoseForm._(
    value: '100000164467',
  );

  /// value100000169997
  static final CombinedDoseForm value100000169997 = CombinedDoseForm._(
    value: '100000169997',
  );

  /// value100000170588
  static final CombinedDoseForm value100000170588 = CombinedDoseForm._(
    value: '100000170588',
  );

  /// value100000171127
  static final CombinedDoseForm value100000171127 = CombinedDoseForm._(
    value: '100000171127',
  );

  /// value100000171193
  static final CombinedDoseForm value100000171193 = CombinedDoseForm._(
    value: '100000171193',
  );

  /// value100000171238
  static final CombinedDoseForm value100000171238 = CombinedDoseForm._(
    value: '100000171238',
  );

  /// value100000171935
  static final CombinedDoseForm value100000171935 = CombinedDoseForm._(
    value: '100000171935',
  );

  /// value100000174065
  static final CombinedDoseForm value100000174065 = CombinedDoseForm._(
    value: '100000174065',
  );

  /// value200000002161
  static final CombinedDoseForm value200000002161 = CombinedDoseForm._(
    value: '200000002161',
  );

  /// value200000002287
  static final CombinedDoseForm value200000002287 = CombinedDoseForm._(
    value: '200000002287',
  );

  /// value200000004201
  static final CombinedDoseForm value200000004201 = CombinedDoseForm._(
    value: '200000004201',
  );

  /// value200000004819
  static final CombinedDoseForm value200000004819 = CombinedDoseForm._(
    value: '200000004819',
  );

  /// value200000004820
  static final CombinedDoseForm value200000004820 = CombinedDoseForm._(
    value: '200000004820',
  );

  /// value200000005547
  static final CombinedDoseForm value200000005547 = CombinedDoseForm._(
    value: '200000005547',
  );

  /// value200000010382
  static final CombinedDoseForm value200000010382 = CombinedDoseForm._(
    value: '200000010382',
  );

  /// For instances where an Element is present but not value

  static final CombinedDoseForm elementOnly = CombinedDoseForm._(value: '');

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

  /// Clones the current instance
  @override
  CombinedDoseForm clone() => CombinedDoseForm._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CombinedDoseForm withElement(Element? newElement) {
    return CombinedDoseForm._(value: value, element: newElement);
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
  CombinedDoseForm copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return CombinedDoseForm._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
