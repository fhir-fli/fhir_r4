// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Biologically Derived Product Status.
class BiologicallyDerivedProductStatus extends FhirCode {
  // Private constructor for internal use (like enum)
  BiologicallyDerivedProductStatus._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [BiologicallyDerivedProductStatus] from JSON.
  factory BiologicallyDerivedProductStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BiologicallyDerivedProductStatus cannot be constructed from JSON.',
      );
    }
    return BiologicallyDerivedProductStatus._(
      value,
      element: element,
    );
  }

  /// available
  static final BiologicallyDerivedProductStatus available =
      BiologicallyDerivedProductStatus._(
    'available',
  );

  /// unavailable
  static final BiologicallyDerivedProductStatus unavailable =
      BiologicallyDerivedProductStatus._(
    'unavailable',
  );

  /// For instances where an Element is present but not value

  static final BiologicallyDerivedProductStatus elementOnly =
      BiologicallyDerivedProductStatus._('');

  /// List of all enum-like values
  static final List<BiologicallyDerivedProductStatus> values = [
    available,
    unavailable,
  ];

  /// Clones the current instance
  @override
  BiologicallyDerivedProductStatus clone() =>
      BiologicallyDerivedProductStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  BiologicallyDerivedProductStatus withElement(Element? newElement) {
    return BiologicallyDerivedProductStatus._(
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
  BiologicallyDerivedProductStatus copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return BiologicallyDerivedProductStatus._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
    );
  }
}
