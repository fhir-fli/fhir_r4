// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines an example set of codes that could be can be used to classify groupings of service-types/specialties.
class Program extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  Program._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [Program] from JSON.
  factory Program.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Program.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'Program cannot be constructed from JSON.',
      );
    }
    return Program._(value: value, element: element);
  }

  /// value1
  static final Program value1 = Program._(
    value: '1',
  );

  /// value2
  static final Program value2 = Program._(
    value: '2',
  );

  /// value3
  static final Program value3 = Program._(
    value: '3',
  );

  /// value4
  static final Program value4 = Program._(
    value: '4',
  );

  /// value5
  static final Program value5 = Program._(
    value: '5',
  );

  /// value6
  static final Program value6 = Program._(
    value: '6',
  );

  /// value7
  static final Program value7 = Program._(
    value: '7',
  );

  /// value8
  static final Program value8 = Program._(
    value: '8',
  );

  /// value9
  static final Program value9 = Program._(
    value: '9',
  );

  /// value10
  static final Program value10 = Program._(
    value: '10',
  );

  /// value11
  static final Program value11 = Program._(
    value: '11',
  );

  /// value12
  static final Program value12 = Program._(
    value: '12',
  );

  /// value13
  static final Program value13 = Program._(
    value: '13',
  );

  /// value14
  static final Program value14 = Program._(
    value: '14',
  );

  /// value15
  static final Program value15 = Program._(
    value: '15',
  );

  /// value16
  static final Program value16 = Program._(
    value: '16',
  );

  /// value17
  static final Program value17 = Program._(
    value: '17',
  );

  /// value18
  static final Program value18 = Program._(
    value: '18',
  );

  /// value19
  static final Program value19 = Program._(
    value: '19',
  );

  /// value20
  static final Program value20 = Program._(
    value: '20',
  );

  /// value21
  static final Program value21 = Program._(
    value: '21',
  );

  /// value22
  static final Program value22 = Program._(
    value: '22',
  );

  /// value23
  static final Program value23 = Program._(
    value: '23',
  );

  /// value24
  static final Program value24 = Program._(
    value: '24',
  );

  /// value25
  static final Program value25 = Program._(
    value: '25',
  );

  /// value26
  static final Program value26 = Program._(
    value: '26',
  );

  /// value27
  static final Program value27 = Program._(
    value: '27',
  );

  /// value28
  static final Program value28 = Program._(
    value: '28',
  );

  /// value29
  static final Program value29 = Program._(
    value: '29',
  );

  /// value30
  static final Program value30 = Program._(
    value: '30',
  );

  /// value31
  static final Program value31 = Program._(
    value: '31',
  );

  /// value32
  static final Program value32 = Program._(
    value: '32',
  );

  /// value33
  static final Program value33 = Program._(
    value: '33',
  );

  /// value34
  static final Program value34 = Program._(
    value: '34',
  );

  /// value35
  static final Program value35 = Program._(
    value: '35',
  );

  /// value36
  static final Program value36 = Program._(
    value: '36',
  );

  /// value37
  static final Program value37 = Program._(
    value: '37',
  );

  /// value38
  static final Program value38 = Program._(
    value: '38',
  );

  /// value39
  static final Program value39 = Program._(
    value: '39',
  );

  /// value40
  static final Program value40 = Program._(
    value: '40',
  );

  /// value41
  static final Program value41 = Program._(
    value: '41',
  );

  /// value42
  static final Program value42 = Program._(
    value: '42',
  );

  /// value43
  static final Program value43 = Program._(
    value: '43',
  );

  /// value44
  static final Program value44 = Program._(
    value: '44',
  );

  /// value45
  static final Program value45 = Program._(
    value: '45',
  );

  /// For instances where an Element is present but not value

  static final Program elementOnly = Program._(value: '');

  /// List of all enum-like values
  static final List<Program> values = [
    value1,
    value2,
    value3,
    value4,
    value5,
    value6,
    value7,
    value8,
    value9,
    value10,
    value11,
    value12,
    value13,
    value14,
    value15,
    value16,
    value17,
    value18,
    value19,
    value20,
    value21,
    value22,
    value23,
    value24,
    value25,
    value26,
    value27,
    value28,
    value29,
    value30,
    value31,
    value32,
    value33,
    value34,
    value35,
    value36,
    value37,
    value38,
    value39,
    value40,
    value41,
    value42,
    value43,
    value44,
    value45,
  ];

  /// Clones the current instance
  @override
  Program clone() => Program._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  Program withElement(Element? newElement) {
    return Program._(value: value, element: newElement);
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
  Program copyWith({
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
    return Program._(
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
