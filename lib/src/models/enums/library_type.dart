// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of knowledge asset this library contains.
class LibraryType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  LibraryType._(super.value, [super.element]);

  /// Factory constructor to create [LibraryType] from JSON.
  factory LibraryType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LibraryType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'LibraryType cannot be constructed from JSON.',
      );
    }
    return LibraryType._(value, element);
  }

  /// logic_library
  static final LibraryType logic_library = LibraryType._(
    'logic-library',
  );

  /// model_definition
  static final LibraryType model_definition = LibraryType._(
    'model-definition',
  );

  /// asset_collection
  static final LibraryType asset_collection = LibraryType._(
    'asset-collection',
  );

  /// module_definition
  static final LibraryType module_definition = LibraryType._(
    'module-definition',
  );

  /// For instances where an Element is present but not value

  static final LibraryType elementOnly = LibraryType._('');

  /// List of all enum-like values
  static final List<LibraryType> values = [
    logic_library,
    model_definition,
    asset_collection,
    module_definition,
  ];

  /// Clones the current instance
  @override
  LibraryType clone() => LibraryType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  LibraryType setElement(
    String name,
    dynamic elementValue,
  ) {
    return LibraryType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  LibraryType withElement(Element? newElement) {
    return LibraryType._(value, newElement);
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
  LibraryType copyWith({
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
    return LibraryType._(
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
