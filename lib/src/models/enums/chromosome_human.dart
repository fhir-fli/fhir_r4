// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Chromosome number for human.
class ChromosomeHuman extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ChromosomeHuman._(super.value, [super.element]);

  /// Factory constructor to create [ChromosomeHuman] from JSON.
  factory ChromosomeHuman.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ChromosomeHuman.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ChromosomeHuman cannot be constructed from JSON.',
      );
    }
    return ChromosomeHuman._(value, element);
  }

  /// value1
  static final ChromosomeHuman value1 = ChromosomeHuman._(
    '1',
  );

  /// value2
  static final ChromosomeHuman value2 = ChromosomeHuman._(
    '2',
  );

  /// value3
  static final ChromosomeHuman value3 = ChromosomeHuman._(
    '3',
  );

  /// value4
  static final ChromosomeHuman value4 = ChromosomeHuman._(
    '4',
  );

  /// value5
  static final ChromosomeHuman value5 = ChromosomeHuman._(
    '5',
  );

  /// value6
  static final ChromosomeHuman value6 = ChromosomeHuman._(
    '6',
  );

  /// value7
  static final ChromosomeHuman value7 = ChromosomeHuman._(
    '7',
  );

  /// value8
  static final ChromosomeHuman value8 = ChromosomeHuman._(
    '8',
  );

  /// value9
  static final ChromosomeHuman value9 = ChromosomeHuman._(
    '9',
  );

  /// value10
  static final ChromosomeHuman value10 = ChromosomeHuman._(
    '10',
  );

  /// value11
  static final ChromosomeHuman value11 = ChromosomeHuman._(
    '11',
  );

  /// value12
  static final ChromosomeHuman value12 = ChromosomeHuman._(
    '12',
  );

  /// value13
  static final ChromosomeHuman value13 = ChromosomeHuman._(
    '13',
  );

  /// value14
  static final ChromosomeHuman value14 = ChromosomeHuman._(
    '14',
  );

  /// value15
  static final ChromosomeHuman value15 = ChromosomeHuman._(
    '15',
  );

  /// value16
  static final ChromosomeHuman value16 = ChromosomeHuman._(
    '16',
  );

  /// value17
  static final ChromosomeHuman value17 = ChromosomeHuman._(
    '17',
  );

  /// value18
  static final ChromosomeHuman value18 = ChromosomeHuman._(
    '18',
  );

  /// value19
  static final ChromosomeHuman value19 = ChromosomeHuman._(
    '19',
  );

  /// value20
  static final ChromosomeHuman value20 = ChromosomeHuman._(
    '20',
  );

  /// value21
  static final ChromosomeHuman value21 = ChromosomeHuman._(
    '21',
  );

  /// value22
  static final ChromosomeHuman value22 = ChromosomeHuman._(
    '22',
  );

  /// X
  static final ChromosomeHuman X = ChromosomeHuman._(
    'X',
  );

  /// Y
  static final ChromosomeHuman Y = ChromosomeHuman._(
    'Y',
  );

  /// For instances where an Element is present but not value

  static final ChromosomeHuman elementOnly = ChromosomeHuman._('');

  /// List of all enum-like values
  static final List<ChromosomeHuman> values = [
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
    X,
    Y,
  ];

  /// Clones the current instance
  @override
  ChromosomeHuman clone() => ChromosomeHuman._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ChromosomeHuman setElement(
    String name,
    dynamic elementValue,
  ) {
    return ChromosomeHuman._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ChromosomeHuman withElement(Element? newElement) {
    return ChromosomeHuman._(value, newElement);
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
  ChromosomeHuman copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ChromosomeHuman._(
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
