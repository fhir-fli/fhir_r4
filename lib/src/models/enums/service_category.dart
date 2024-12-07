// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines an example set of codes that can be used to classify groupings of service-types/specialties.
class ServiceCategory extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ServiceCategory._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ServiceCategory] from JSON.
  factory ServiceCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceCategory.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ServiceCategory cannot be constructed from JSON.',
      );
    }
    return ServiceCategory._(value: value, element: element);
  }

  /// value1
  static final ServiceCategory value1 = ServiceCategory._(
    value: '1',
  );

  /// value2
  static final ServiceCategory value2 = ServiceCategory._(
    value: '2',
  );

  /// value34
  static final ServiceCategory value34 = ServiceCategory._(
    value: '34',
  );

  /// value3
  static final ServiceCategory value3 = ServiceCategory._(
    value: '3',
  );

  /// value4
  static final ServiceCategory value4 = ServiceCategory._(
    value: '4',
  );

  /// value5
  static final ServiceCategory value5 = ServiceCategory._(
    value: '5',
  );

  /// value6
  static final ServiceCategory value6 = ServiceCategory._(
    value: '6',
  );

  /// value7
  static final ServiceCategory value7 = ServiceCategory._(
    value: '7',
  );

  /// value8
  static final ServiceCategory value8 = ServiceCategory._(
    value: '8',
  );

  /// value36
  static final ServiceCategory value36 = ServiceCategory._(
    value: '36',
  );

  /// value9
  static final ServiceCategory value9 = ServiceCategory._(
    value: '9',
  );

  /// value10
  static final ServiceCategory value10 = ServiceCategory._(
    value: '10',
  );

  /// value11
  static final ServiceCategory value11 = ServiceCategory._(
    value: '11',
  );

  /// value12
  static final ServiceCategory value12 = ServiceCategory._(
    value: '12',
  );

  /// value13
  static final ServiceCategory value13 = ServiceCategory._(
    value: '13',
  );

  /// value14
  static final ServiceCategory value14 = ServiceCategory._(
    value: '14',
  );

  /// value15
  static final ServiceCategory value15 = ServiceCategory._(
    value: '15',
  );

  /// value16
  static final ServiceCategory value16 = ServiceCategory._(
    value: '16',
  );

  /// value17
  static final ServiceCategory value17 = ServiceCategory._(
    value: '17',
  );

  /// value35
  static final ServiceCategory value35 = ServiceCategory._(
    value: '35',
  );

  /// value18
  static final ServiceCategory value18 = ServiceCategory._(
    value: '18',
  );

  /// value19
  static final ServiceCategory value19 = ServiceCategory._(
    value: '19',
  );

  /// value20
  static final ServiceCategory value20 = ServiceCategory._(
    value: '20',
  );

  /// value21
  static final ServiceCategory value21 = ServiceCategory._(
    value: '21',
  );

  /// value22
  static final ServiceCategory value22 = ServiceCategory._(
    value: '22',
  );

  /// value38
  static final ServiceCategory value38 = ServiceCategory._(
    value: '38',
  );

  /// value23
  static final ServiceCategory value23 = ServiceCategory._(
    value: '23',
  );

  /// value24
  static final ServiceCategory value24 = ServiceCategory._(
    value: '24',
  );

  /// value25
  static final ServiceCategory value25 = ServiceCategory._(
    value: '25',
  );

  /// value26
  static final ServiceCategory value26 = ServiceCategory._(
    value: '26',
  );

  /// value27
  static final ServiceCategory value27 = ServiceCategory._(
    value: '27',
  );

  /// value28
  static final ServiceCategory value28 = ServiceCategory._(
    value: '28',
  );

  /// value29
  static final ServiceCategory value29 = ServiceCategory._(
    value: '29',
  );

  /// value30
  static final ServiceCategory value30 = ServiceCategory._(
    value: '30',
  );

  /// value31
  static final ServiceCategory value31 = ServiceCategory._(
    value: '31',
  );

  /// value32
  static final ServiceCategory value32 = ServiceCategory._(
    value: '32',
  );

  /// value37
  static final ServiceCategory value37 = ServiceCategory._(
    value: '37',
  );

  /// value33
  static final ServiceCategory value33 = ServiceCategory._(
    value: '33',
  );

  /// For instances where an Element is present but not value

  static final ServiceCategory elementOnly = ServiceCategory._(value: '');

  /// List of all enum-like values
  static final List<ServiceCategory> values = [
    value1,
    value2,
    value34,
    value3,
    value4,
    value5,
    value6,
    value7,
    value8,
    value36,
    value9,
    value10,
    value11,
    value12,
    value13,
    value14,
    value15,
    value16,
    value17,
    value35,
    value18,
    value19,
    value20,
    value21,
    value22,
    value38,
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
    value37,
    value33,
  ];

  /// Clones the current instance
  @override
  ServiceCategory clone() => ServiceCategory._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ServiceCategory withElement(Element? newElement) {
    return ServiceCategory._(value: value, element: newElement);
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
  ServiceCategory copyWith({
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
    return ServiceCategory._(
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
