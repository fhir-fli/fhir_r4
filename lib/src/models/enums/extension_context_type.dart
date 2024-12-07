// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How an extension context is interpreted.
class ExtensionContextType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ExtensionContextType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ExtensionContextType] from JSON.
  factory ExtensionContextType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExtensionContextType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExtensionContextType cannot be constructed from JSON.',
      );
    }
    return ExtensionContextType._(value: value, element: element);
  }

  /// fhirpath
  static final ExtensionContextType fhirpath = ExtensionContextType._(
    value: 'fhirpath',
  );

  /// element_
  static final ExtensionContextType element_ = ExtensionContextType._(
    value: 'element',
  );

  /// extension_
  static final ExtensionContextType extensionValue = ExtensionContextType._(
    value: 'extension',
  );

  /// For instances where an Element is present but not value

  static final ExtensionContextType elementOnly =
      ExtensionContextType._(value: '');

  /// List of all enum-like values
  static final List<ExtensionContextType> values = [
    fhirpath,
    element_,
    extensionValue,
  ];

  /// Clones the current instance
  @override
  ExtensionContextType clone() => ExtensionContextType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ExtensionContextType withElement(Element? newElement) {
    return ExtensionContextType._(value: value, element: newElement);
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
  ExtensionContextType copyWith({
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
    return ExtensionContextType._(
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
