// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Chromosome number for human.
class ChromosomeHuman extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ChromosomeHuman._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

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
    return ChromosomeHuman._(value: value, element: element);
  }

  /// value1
  static final ChromosomeHuman value1 = ChromosomeHuman._(
    value: '1',
  );

  /// value2
  static final ChromosomeHuman value2 = ChromosomeHuman._(
    value: '2',
  );

  /// value3
  static final ChromosomeHuman value3 = ChromosomeHuman._(
    value: '3',
  );

  /// value4
  static final ChromosomeHuman value4 = ChromosomeHuman._(
    value: '4',
  );

  /// value5
  static final ChromosomeHuman value5 = ChromosomeHuman._(
    value: '5',
  );

  /// value6
  static final ChromosomeHuman value6 = ChromosomeHuman._(
    value: '6',
  );

  /// value7
  static final ChromosomeHuman value7 = ChromosomeHuman._(
    value: '7',
  );

  /// value8
  static final ChromosomeHuman value8 = ChromosomeHuman._(
    value: '8',
  );

  /// value9
  static final ChromosomeHuman value9 = ChromosomeHuman._(
    value: '9',
  );

  /// value10
  static final ChromosomeHuman value10 = ChromosomeHuman._(
    value: '10',
  );

  /// value11
  static final ChromosomeHuman value11 = ChromosomeHuman._(
    value: '11',
  );

  /// value12
  static final ChromosomeHuman value12 = ChromosomeHuman._(
    value: '12',
  );

  /// value13
  static final ChromosomeHuman value13 = ChromosomeHuman._(
    value: '13',
  );

  /// value14
  static final ChromosomeHuman value14 = ChromosomeHuman._(
    value: '14',
  );

  /// value15
  static final ChromosomeHuman value15 = ChromosomeHuman._(
    value: '15',
  );

  /// value16
  static final ChromosomeHuman value16 = ChromosomeHuman._(
    value: '16',
  );

  /// value17
  static final ChromosomeHuman value17 = ChromosomeHuman._(
    value: '17',
  );

  /// value18
  static final ChromosomeHuman value18 = ChromosomeHuman._(
    value: '18',
  );

  /// value19
  static final ChromosomeHuman value19 = ChromosomeHuman._(
    value: '19',
  );

  /// value20
  static final ChromosomeHuman value20 = ChromosomeHuman._(
    value: '20',
  );

  /// value21
  static final ChromosomeHuman value21 = ChromosomeHuman._(
    value: '21',
  );

  /// value22
  static final ChromosomeHuman value22 = ChromosomeHuman._(
    value: '22',
  );

  /// X
  static final ChromosomeHuman X = ChromosomeHuman._(
    value: 'X',
  );

  /// Y
  static final ChromosomeHuman Y = ChromosomeHuman._(
    value: 'Y',
  );

  /// For instances where an Element is present but not value

  static final ChromosomeHuman elementOnly = ChromosomeHuman._(value: '');

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
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ChromosomeHuman withElement(Element? newElement) {
    return ChromosomeHuman._(value: value, element: newElement);
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
    return ChromosomeHuman._(
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
