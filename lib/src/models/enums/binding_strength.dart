// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indication of the degree of conformance expectations associated with a binding.
class BindingStrength extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  BindingStrength._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [BindingStrength] from JSON.
  factory BindingStrength.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BindingStrength.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BindingStrength cannot be constructed from JSON.',
      );
    }
    return BindingStrength._(
      value,
      element: element,
    );
  }

  /// required_
  static final BindingStrength required_ = BindingStrength._(
    'required',
  );

  /// extensible
  static final BindingStrength extensible = BindingStrength._(
    'extensible',
  );

  /// preferred
  static final BindingStrength preferred = BindingStrength._(
    'preferred',
  );

  /// example
  static final BindingStrength example = BindingStrength._(
    'example',
  );

  /// For instances where an Element is present but not value

  static final BindingStrength elementOnly = BindingStrength._('');

  /// List of all enum-like values
  static final List<BindingStrength> values = [
    required_,
    extensible,
    preferred,
    example,
  ];

  /// Clones the current instance
  @override
  BindingStrength clone() => BindingStrength._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  BindingStrength withElement(Element? newElement) {
    return BindingStrength._(
      value,
      element: newElement,
    );
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
  BindingStrength copyWith({
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
    return BindingStrength._(
      newValue ?? value,
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
