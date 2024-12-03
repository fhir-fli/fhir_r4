// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How an extension context is interpreted.
class ExtensionContextType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ExtensionContextType._(super.value, [super.element]);

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
          'ExtensionContextType cannot be constructed from JSON.');
    }
    return ExtensionContextType._(value, element);
  }

  /// fhirpath
  static final ExtensionContextType fhirpath = ExtensionContextType._(
    'fhirpath',
  );

  /// element_
  static final ExtensionContextType element_ = ExtensionContextType._(
    'element',
  );

  /// extension_
  static final ExtensionContextType extension_ = ExtensionContextType._(
    'extension',
  );

  /// For instances where an Element is present but not value

  static final ExtensionContextType elementOnly = ExtensionContextType._('');

  /// List of all enum-like values
  static final List<ExtensionContextType> values = [
    fhirpath,
    element_,
    extension_,
  ];

  /// Clones the current instance
  @override
  ExtensionContextType clone() => ExtensionContextType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ExtensionContextType setElement(
    String name,
    dynamic elementValue,
  ) {
    return ExtensionContextType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ExtensionContextType withElement(Element? newElement) {
    return ExtensionContextType._(value, newElement);
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
    return ExtensionContextType._(
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
