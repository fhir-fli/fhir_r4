// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How an element value is interpreted when discrimination is evaluated.
class DiscriminatorType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  DiscriminatorType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

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
      throw ArgumentError(
        'DiscriminatorType cannot be constructed from JSON.',
      );
    }
    return DiscriminatorType._(value: value, element: element);
  }

  /// value
  static final DiscriminatorType value_ = DiscriminatorType._(
    value: 'value',
  );

  /// exists
  static final DiscriminatorType exists = DiscriminatorType._(
    value: 'exists',
  );

  /// pattern
  static final DiscriminatorType pattern = DiscriminatorType._(
    value: 'pattern',
  );

  /// type
  static final DiscriminatorType type = DiscriminatorType._(
    value: 'type',
  );

  /// profile
  static final DiscriminatorType profile = DiscriminatorType._(
    value: 'profile',
  );

  /// For instances where an Element is present but not value

  static final DiscriminatorType elementOnly = DiscriminatorType._(value: '');

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
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DiscriminatorType withElement(Element? newElement) {
    return DiscriminatorType._(value: value, element: newElement);
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
    return DiscriminatorType._(
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
