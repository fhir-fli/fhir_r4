// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of USCLS codes.
class USCLSCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  USCLSCodes._(super.value, [super.element]);

  /// Factory constructor to create [USCLSCodes] from JSON.
  factory USCLSCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return USCLSCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'USCLSCodes cannot be constructed from JSON.',
      );
    }
    return USCLSCodes._(value, element);
  }

  /// value1101
  static final USCLSCodes value1101 = USCLSCodes._(
    '1101',
  );

  /// value1102
  static final USCLSCodes value1102 = USCLSCodes._(
    '1102',
  );

  /// value1103
  static final USCLSCodes value1103 = USCLSCodes._(
    '1103',
  );

  /// value1201
  static final USCLSCodes value1201 = USCLSCodes._(
    '1201',
  );

  /// value1205
  static final USCLSCodes value1205 = USCLSCodes._(
    '1205',
  );

  /// value2101
  static final USCLSCodes value2101 = USCLSCodes._(
    '2101',
  );

  /// value2102
  static final USCLSCodes value2102 = USCLSCodes._(
    '2102',
  );

  /// value2141
  static final USCLSCodes value2141 = USCLSCodes._(
    '2141',
  );

  /// value2601
  static final USCLSCodes value2601 = USCLSCodes._(
    '2601',
  );

  /// value11101
  static final USCLSCodes value11101 = USCLSCodes._(
    '11101',
  );

  /// value11102
  static final USCLSCodes value11102 = USCLSCodes._(
    '11102',
  );

  /// value11103
  static final USCLSCodes value11103 = USCLSCodes._(
    '11103',
  );

  /// value11104
  static final USCLSCodes value11104 = USCLSCodes._(
    '11104',
  );

  /// value21211
  static final USCLSCodes value21211 = USCLSCodes._(
    '21211',
  );

  /// value21212
  static final USCLSCodes value21212 = USCLSCodes._(
    '21212',
  );

  /// value27211
  static final USCLSCodes value27211 = USCLSCodes._(
    '27211',
  );

  /// value67211
  static final USCLSCodes value67211 = USCLSCodes._(
    '67211',
  );

  /// value99111
  static final USCLSCodes value99111 = USCLSCodes._(
    '99111',
  );

  /// value99333
  static final USCLSCodes value99333 = USCLSCodes._(
    '99333',
  );

  /// value99555
  static final USCLSCodes value99555 = USCLSCodes._(
    '99555',
  );

  /// For instances where an Element is present but not value

  static final USCLSCodes elementOnly = USCLSCodes._('');

  /// List of all enum-like values
  static final List<USCLSCodes> values = [
    value1101,
    value1102,
    value1103,
    value1201,
    value1205,
    value2101,
    value2102,
    value2141,
    value2601,
    value11101,
    value11102,
    value11103,
    value11104,
    value21211,
    value21212,
    value27211,
    value67211,
    value99111,
    value99333,
    value99555,
  ];

  /// Clones the current instance
  @override
  USCLSCodes clone() => USCLSCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  USCLSCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return USCLSCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  USCLSCodes withElement(Element? newElement) {
    return USCLSCodes._(value, newElement);
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
  USCLSCodes copyWith({
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
    return USCLSCodes._(
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
