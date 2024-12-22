// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The meaning of the hierarchy of concepts in a code system.
class CodeSystemHierarchyMeaning extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CodeSystemHierarchyMeaning._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [CodeSystemHierarchyMeaning] from JSON.
  factory CodeSystemHierarchyMeaning.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSystemHierarchyMeaning.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CodeSystemHierarchyMeaning cannot be constructed from JSON.',
      );
    }
    return CodeSystemHierarchyMeaning._(
      value,
      element: element,
    );
  }

  /// grouped_by
  static final CodeSystemHierarchyMeaning grouped_by =
      CodeSystemHierarchyMeaning._(
    'grouped-by',
  );

  /// is_a
  static final CodeSystemHierarchyMeaning is_a = CodeSystemHierarchyMeaning._(
    'is-a',
  );

  /// part_of
  static final CodeSystemHierarchyMeaning part_of =
      CodeSystemHierarchyMeaning._(
    'part-of',
  );

  /// classified_with
  static final CodeSystemHierarchyMeaning classified_with =
      CodeSystemHierarchyMeaning._(
    'classified-with',
  );

  /// For instances where an Element is present but not value

  static final CodeSystemHierarchyMeaning elementOnly =
      CodeSystemHierarchyMeaning._('');

  /// List of all enum-like values
  static final List<CodeSystemHierarchyMeaning> values = [
    grouped_by,
    is_a,
    part_of,
    classified_with,
  ];

  /// Clones the current instance
  @override
  CodeSystemHierarchyMeaning clone() => CodeSystemHierarchyMeaning._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CodeSystemHierarchyMeaning withElement(Element? newElement) {
    return CodeSystemHierarchyMeaning._(
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
  CodeSystemHierarchyMeaning copyWith({
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
    return CodeSystemHierarchyMeaning._(
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
