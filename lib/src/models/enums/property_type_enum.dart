// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of a property value.
class PropertyTypeEnum extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  PropertyTypeEnum._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [PropertyTypeEnum] from JSON.
  factory PropertyTypeEnum.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PropertyTypeEnum.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PropertyTypeEnum cannot be constructed from JSON.',
      );
    }
    return PropertyTypeEnum._(value: value, element: element);
  }

  /// code
  static final PropertyTypeEnum code = PropertyTypeEnum._(
    value: 'code',
  );

  /// Coding
  static final PropertyTypeEnum Coding = PropertyTypeEnum._(
    value: 'Coding',
  );

  /// string
  static final PropertyTypeEnum string = PropertyTypeEnum._(
    value: 'string',
  );

  /// integer
  static final PropertyTypeEnum integer = PropertyTypeEnum._(
    value: 'integer',
  );

  /// boolean
  static final PropertyTypeEnum boolean = PropertyTypeEnum._(
    value: 'boolean',
  );

  /// dateTime
  static final PropertyTypeEnum dateTime = PropertyTypeEnum._(
    value: 'dateTime',
  );

  /// decimal
  static final PropertyTypeEnum decimal = PropertyTypeEnum._(
    value: 'decimal',
  );

  /// For instances where an Element is present but not value

  static final PropertyTypeEnum elementOnly = PropertyTypeEnum._(value: '');

  /// List of all enum-like values
  static final List<PropertyTypeEnum> values = [
    code,
    Coding,
    string,
    integer,
    boolean,
    dateTime,
    decimal,
  ];

  /// Clones the current instance
  @override
  PropertyTypeEnum clone() => PropertyTypeEnum._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  PropertyTypeEnum withElement(Element? newElement) {
    return PropertyTypeEnum._(value: value, element: newElement);
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
  PropertyTypeEnum copyWith({
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
    return PropertyTypeEnum._(
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
