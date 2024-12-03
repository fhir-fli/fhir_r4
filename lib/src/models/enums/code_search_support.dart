// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The degree to which the server supports the code search parameter on ValueSet, if it is supported.
class CodeSearchSupport extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CodeSearchSupport._(super.value, [super.element]);

  /// Factory constructor to create [CodeSearchSupport] from JSON.
  factory CodeSearchSupport.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSearchSupport.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CodeSearchSupport cannot be constructed from JSON.',
      );
    }
    return CodeSearchSupport._(value, element);
  }

  /// explicit
  static final CodeSearchSupport explicit = CodeSearchSupport._(
    'explicit',
  );

  /// all
  static final CodeSearchSupport all = CodeSearchSupport._(
    'all',
  );

  /// For instances where an Element is present but not value

  static final CodeSearchSupport elementOnly = CodeSearchSupport._('');

  /// List of all enum-like values
  static final List<CodeSearchSupport> values = [
    explicit,
    all,
  ];

  /// Clones the current instance
  @override
  CodeSearchSupport clone() => CodeSearchSupport._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  CodeSearchSupport setElement(
    String name,
    dynamic elementValue,
  ) {
    return CodeSearchSupport._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  CodeSearchSupport withElement(Element? newElement) {
    return CodeSearchSupport._(value, newElement);
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
  CodeSearchSupport copyWith({
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
    return CodeSearchSupport._(
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
