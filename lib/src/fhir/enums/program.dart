// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines an example set of codes that could be can be used to classify groupings of service-types/specialties.
class Program extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  Program._(super.value, [super.element]);

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
    return Program._(value, element);
  }

  /// value1
  static final Program value1 = Program._(
    '1',
  );

  /// value2
  static final Program value2 = Program._(
    '2',
  );

  /// value3
  static final Program value3 = Program._(
    '3',
  );

  /// value4
  static final Program value4 = Program._(
    '4',
  );

  /// value5
  static final Program value5 = Program._(
    '5',
  );

  /// value6
  static final Program value6 = Program._(
    '6',
  );

  /// value7
  static final Program value7 = Program._(
    '7',
  );

  /// value8
  static final Program value8 = Program._(
    '8',
  );

  /// value9
  static final Program value9 = Program._(
    '9',
  );

  /// value10
  static final Program value10 = Program._(
    '10',
  );

  /// value11
  static final Program value11 = Program._(
    '11',
  );

  /// value12
  static final Program value12 = Program._(
    '12',
  );

  /// value13
  static final Program value13 = Program._(
    '13',
  );

  /// value14
  static final Program value14 = Program._(
    '14',
  );

  /// value15
  static final Program value15 = Program._(
    '15',
  );

  /// value16
  static final Program value16 = Program._(
    '16',
  );

  /// value17
  static final Program value17 = Program._(
    '17',
  );

  /// value18
  static final Program value18 = Program._(
    '18',
  );

  /// value19
  static final Program value19 = Program._(
    '19',
  );

  /// value20
  static final Program value20 = Program._(
    '20',
  );

  /// value21
  static final Program value21 = Program._(
    '21',
  );

  /// value22
  static final Program value22 = Program._(
    '22',
  );

  /// value23
  static final Program value23 = Program._(
    '23',
  );

  /// value24
  static final Program value24 = Program._(
    '24',
  );

  /// value25
  static final Program value25 = Program._(
    '25',
  );

  /// value26
  static final Program value26 = Program._(
    '26',
  );

  /// value27
  static final Program value27 = Program._(
    '27',
  );

  /// value28
  static final Program value28 = Program._(
    '28',
  );

  /// value29
  static final Program value29 = Program._(
    '29',
  );

  /// value30
  static final Program value30 = Program._(
    '30',
  );

  /// value31
  static final Program value31 = Program._(
    '31',
  );

  /// value32
  static final Program value32 = Program._(
    '32',
  );

  /// value33
  static final Program value33 = Program._(
    '33',
  );

  /// value34
  static final Program value34 = Program._(
    '34',
  );

  /// value35
  static final Program value35 = Program._(
    '35',
  );

  /// value36
  static final Program value36 = Program._(
    '36',
  );

  /// value37
  static final Program value37 = Program._(
    '37',
  );

  /// value38
  static final Program value38 = Program._(
    '38',
  );

  /// value39
  static final Program value39 = Program._(
    '39',
  );

  /// value40
  static final Program value40 = Program._(
    '40',
  );

  /// value41
  static final Program value41 = Program._(
    '41',
  );

  /// value42
  static final Program value42 = Program._(
    '42',
  );

  /// value43
  static final Program value43 = Program._(
    '43',
  );

  /// value44
  static final Program value44 = Program._(
    '44',
  );

  /// value45
  static final Program value45 = Program._(
    '45',
  );

  /// For instances where an Element is present but not value

  static final Program elementOnly = Program._('');

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
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  Program setElement(
    String name,
    dynamic elementValue,
  ) {
    return Program._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  Program withElement(Element? newElement) {
    return Program._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return Program._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
