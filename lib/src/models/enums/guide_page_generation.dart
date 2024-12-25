// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code that indicates how the page is generated.
class GuidePageGeneration extends FhirCode {
  // Private constructor for internal use (like enum)
  GuidePageGeneration._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [GuidePageGeneration] from JSON.
  factory GuidePageGeneration.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuidePageGeneration.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GuidePageGeneration cannot be constructed from JSON.',
      );
    }
    return GuidePageGeneration._(
      value,
      element: element,
    );
  }

  /// html
  static final GuidePageGeneration html = GuidePageGeneration._(
    'html',
  );

  /// markdown
  static final GuidePageGeneration markdown = GuidePageGeneration._(
    'markdown',
  );

  /// xml
  static final GuidePageGeneration xml = GuidePageGeneration._(
    'xml',
  );

  /// generated
  static final GuidePageGeneration generated = GuidePageGeneration._(
    'generated',
  );

  /// For instances where an Element is present but not value

  static final GuidePageGeneration elementOnly = GuidePageGeneration._('');

  /// List of all enum-like values
  static final List<GuidePageGeneration> values = [
    html,
    markdown,
    xml,
    generated,
  ];

  /// Clones the current instance
  @override
  GuidePageGeneration clone() => GuidePageGeneration._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  GuidePageGeneration withElement(Element? newElement) {
    return GuidePageGeneration._(
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
  GuidePageGeneration copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return GuidePageGeneration._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
