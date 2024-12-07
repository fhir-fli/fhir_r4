// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of FDI oral site codes.
class OralSiteCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  OralSiteCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [OralSiteCodes] from JSON.
  factory OralSiteCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OralSiteCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'OralSiteCodes cannot be constructed from JSON.',
      );
    }
    return OralSiteCodes._(value: value, element: element);
  }

  /// value0
  static final OralSiteCodes value0 = OralSiteCodes._(
    value: '0',
  );

  /// value1
  static final OralSiteCodes value1 = OralSiteCodes._(
    value: '1',
  );

  /// value2
  static final OralSiteCodes value2 = OralSiteCodes._(
    value: '2',
  );

  /// value3
  static final OralSiteCodes value3 = OralSiteCodes._(
    value: '3',
  );

  /// value4
  static final OralSiteCodes value4 = OralSiteCodes._(
    value: '4',
  );

  /// value5
  static final OralSiteCodes value5 = OralSiteCodes._(
    value: '5',
  );

  /// value6
  static final OralSiteCodes value6 = OralSiteCodes._(
    value: '6',
  );

  /// value7
  static final OralSiteCodes value7 = OralSiteCodes._(
    value: '7',
  );

  /// value8
  static final OralSiteCodes value8 = OralSiteCodes._(
    value: '8',
  );

  /// value11
  static final OralSiteCodes value11 = OralSiteCodes._(
    value: '11',
  );

  /// value12
  static final OralSiteCodes value12 = OralSiteCodes._(
    value: '12',
  );

  /// value13
  static final OralSiteCodes value13 = OralSiteCodes._(
    value: '13',
  );

  /// value14
  static final OralSiteCodes value14 = OralSiteCodes._(
    value: '14',
  );

  /// value15
  static final OralSiteCodes value15 = OralSiteCodes._(
    value: '15',
  );

  /// value16
  static final OralSiteCodes value16 = OralSiteCodes._(
    value: '16',
  );

  /// value17
  static final OralSiteCodes value17 = OralSiteCodes._(
    value: '17',
  );

  /// value18
  static final OralSiteCodes value18 = OralSiteCodes._(
    value: '18',
  );

  /// value21
  static final OralSiteCodes value21 = OralSiteCodes._(
    value: '21',
  );

  /// value22
  static final OralSiteCodes value22 = OralSiteCodes._(
    value: '22',
  );

  /// value23
  static final OralSiteCodes value23 = OralSiteCodes._(
    value: '23',
  );

  /// value24
  static final OralSiteCodes value24 = OralSiteCodes._(
    value: '24',
  );

  /// value25
  static final OralSiteCodes value25 = OralSiteCodes._(
    value: '25',
  );

  /// value26
  static final OralSiteCodes value26 = OralSiteCodes._(
    value: '26',
  );

  /// value27
  static final OralSiteCodes value27 = OralSiteCodes._(
    value: '27',
  );

  /// value28
  static final OralSiteCodes value28 = OralSiteCodes._(
    value: '28',
  );

  /// value31
  static final OralSiteCodes value31 = OralSiteCodes._(
    value: '31',
  );

  /// value32
  static final OralSiteCodes value32 = OralSiteCodes._(
    value: '32',
  );

  /// value33
  static final OralSiteCodes value33 = OralSiteCodes._(
    value: '33',
  );

  /// value34
  static final OralSiteCodes value34 = OralSiteCodes._(
    value: '34',
  );

  /// value35
  static final OralSiteCodes value35 = OralSiteCodes._(
    value: '35',
  );

  /// value36
  static final OralSiteCodes value36 = OralSiteCodes._(
    value: '36',
  );

  /// value37
  static final OralSiteCodes value37 = OralSiteCodes._(
    value: '37',
  );

  /// value38
  static final OralSiteCodes value38 = OralSiteCodes._(
    value: '38',
  );

  /// value41
  static final OralSiteCodes value41 = OralSiteCodes._(
    value: '41',
  );

  /// value42
  static final OralSiteCodes value42 = OralSiteCodes._(
    value: '42',
  );

  /// value43
  static final OralSiteCodes value43 = OralSiteCodes._(
    value: '43',
  );

  /// value44
  static final OralSiteCodes value44 = OralSiteCodes._(
    value: '44',
  );

  /// value45
  static final OralSiteCodes value45 = OralSiteCodes._(
    value: '45',
  );

  /// value46
  static final OralSiteCodes value46 = OralSiteCodes._(
    value: '46',
  );

  /// value47
  static final OralSiteCodes value47 = OralSiteCodes._(
    value: '47',
  );

  /// value48
  static final OralSiteCodes value48 = OralSiteCodes._(
    value: '48',
  );

  /// For instances where an Element is present but not value

  static final OralSiteCodes elementOnly = OralSiteCodes._(value: '');

  /// List of all enum-like values
  static final List<OralSiteCodes> values = [
    value0,
    value1,
    value2,
    value3,
    value4,
    value5,
    value6,
    value7,
    value8,
    value11,
    value12,
    value13,
    value14,
    value15,
    value16,
    value17,
    value18,
    value21,
    value22,
    value23,
    value24,
    value25,
    value26,
    value27,
    value28,
    value31,
    value32,
    value33,
    value34,
    value35,
    value36,
    value37,
    value38,
    value41,
    value42,
    value43,
    value44,
    value45,
    value46,
    value47,
    value48,
  ];

  /// Clones the current instance
  @override
  OralSiteCodes clone() => OralSiteCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  OralSiteCodes withElement(Element? newElement) {
    return OralSiteCodes._(value: value, element: newElement);
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
  OralSiteCodes copyWith({
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
    return OralSiteCodes._(
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
