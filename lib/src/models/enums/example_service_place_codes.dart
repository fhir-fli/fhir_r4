// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Service Place codes.
class ExampleServicePlaceCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ExampleServicePlaceCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ExampleServicePlaceCodes] from JSON.
  factory ExampleServicePlaceCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleServicePlaceCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExampleServicePlaceCodes cannot be constructed from JSON.',
      );
    }
    return ExampleServicePlaceCodes._(value: value, element: element);
  }

  /// value01
  static final ExampleServicePlaceCodes value01 = ExampleServicePlaceCodes._(
    value: '01',
  );

  /// value03
  static final ExampleServicePlaceCodes value03 = ExampleServicePlaceCodes._(
    value: '03',
  );

  /// value04
  static final ExampleServicePlaceCodes value04 = ExampleServicePlaceCodes._(
    value: '04',
  );

  /// value05
  static final ExampleServicePlaceCodes value05 = ExampleServicePlaceCodes._(
    value: '05',
  );

  /// value06
  static final ExampleServicePlaceCodes value06 = ExampleServicePlaceCodes._(
    value: '06',
  );

  /// value07
  static final ExampleServicePlaceCodes value07 = ExampleServicePlaceCodes._(
    value: '07',
  );

  /// value08
  static final ExampleServicePlaceCodes value08 = ExampleServicePlaceCodes._(
    value: '08',
  );

  /// value09
  static final ExampleServicePlaceCodes value09 = ExampleServicePlaceCodes._(
    value: '09',
  );

  /// value11
  static final ExampleServicePlaceCodes value11 = ExampleServicePlaceCodes._(
    value: '11',
  );

  /// value12
  static final ExampleServicePlaceCodes value12 = ExampleServicePlaceCodes._(
    value: '12',
  );

  /// value13
  static final ExampleServicePlaceCodes value13 = ExampleServicePlaceCodes._(
    value: '13',
  );

  /// value14
  static final ExampleServicePlaceCodes value14 = ExampleServicePlaceCodes._(
    value: '14',
  );

  /// value15
  static final ExampleServicePlaceCodes value15 = ExampleServicePlaceCodes._(
    value: '15',
  );

  /// value19
  static final ExampleServicePlaceCodes value19 = ExampleServicePlaceCodes._(
    value: '19',
  );

  /// value20
  static final ExampleServicePlaceCodes value20 = ExampleServicePlaceCodes._(
    value: '20',
  );

  /// value21
  static final ExampleServicePlaceCodes value21 = ExampleServicePlaceCodes._(
    value: '21',
  );

  /// value41
  static final ExampleServicePlaceCodes value41 = ExampleServicePlaceCodes._(
    value: '41',
  );

  /// For instances where an Element is present but not value

  static final ExampleServicePlaceCodes elementOnly =
      ExampleServicePlaceCodes._(value: '');

  /// List of all enum-like values
  static final List<ExampleServicePlaceCodes> values = [
    value01,
    value03,
    value04,
    value05,
    value06,
    value07,
    value08,
    value09,
    value11,
    value12,
    value13,
    value14,
    value15,
    value19,
    value20,
    value21,
    value41,
  ];

  /// Clones the current instance
  @override
  ExampleServicePlaceCodes clone() => ExampleServicePlaceCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ExampleServicePlaceCodes withElement(Element? newElement) {
    return ExampleServicePlaceCodes._(value: value, element: newElement);
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
  ExampleServicePlaceCodes copyWith({
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
    return ExampleServicePlaceCodes._(
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
