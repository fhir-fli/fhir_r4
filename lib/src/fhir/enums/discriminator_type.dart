// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How an element value is interpreted when discrimination is evaluated.
class DiscriminatorType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  DiscriminatorType._(super.value, [super.element]);

  /// Factory constructor to create [DiscriminatorType] from JSON.
  factory DiscriminatorType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DiscriminatorType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('DiscriminatorType cannot be constructed from JSON.');
    }
    return DiscriminatorType._(value, element);
  }

  /// value
  static final DiscriminatorType value_ = DiscriminatorType._(
    'value',
  );

  /// exists
  static final DiscriminatorType exists = DiscriminatorType._(
    'exists',
  );

  /// pattern
  static final DiscriminatorType pattern = DiscriminatorType._(
    'pattern',
  );

  /// type
  static final DiscriminatorType type = DiscriminatorType._(
    'type',
  );

  /// profile
  static final DiscriminatorType profile = DiscriminatorType._(
    'profile',
  );

  /// For instances where an Element is present but not value

  static final DiscriminatorType elementOnly = DiscriminatorType._('');

  /// List of all enum-like values
  static final List<DiscriminatorType> values = [
    value_,
    exists,
    pattern,
    type,
    profile,
  ];

  /// Clones the current instance
  @override
  DiscriminatorType clone() => DiscriminatorType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  DiscriminatorType setElement(
    String name,
    dynamic elementValue,
  ) {
    return DiscriminatorType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  DiscriminatorType withElement(Element? newElement) {
    return DiscriminatorType._(value, newElement);
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
  DiscriminatorType copyWith({
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
    return DiscriminatorType._(
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
