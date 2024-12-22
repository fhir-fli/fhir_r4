// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Identifies the purpose of the naming system.
class NamingSystemType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  NamingSystemType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [NamingSystemType] from JSON.
  factory NamingSystemType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NamingSystemType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NamingSystemType cannot be constructed from JSON.',
      );
    }
    return NamingSystemType._(
      value,
      element: element,
    );
  }

  /// codesystem
  static final NamingSystemType codesystem = NamingSystemType._(
    'codesystem',
  );

  /// identifier
  static final NamingSystemType identifier = NamingSystemType._(
    'identifier',
  );

  /// root
  static final NamingSystemType root = NamingSystemType._(
    'root',
  );

  /// For instances where an Element is present but not value

  static final NamingSystemType elementOnly = NamingSystemType._('');

  /// List of all enum-like values
  static final List<NamingSystemType> values = [
    codesystem,
    identifier,
    root,
  ];

  /// Clones the current instance
  @override
  NamingSystemType clone() => NamingSystemType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  NamingSystemType withElement(Element? newElement) {
    return NamingSystemType._(
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
  NamingSystemType copyWith({
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
    return NamingSystemType._(
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
