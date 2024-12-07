// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// To describe the reason for the variant citation, such as version number or subpart specification.
class CitedArtifactPartType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CitedArtifactPartType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [CitedArtifactPartType] from JSON.
  factory CitedArtifactPartType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitedArtifactPartType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CitedArtifactPartType cannot be constructed from JSON.',
      );
    }
    return CitedArtifactPartType._(value: value, element: element);
  }

  /// pages
  static final CitedArtifactPartType pages = CitedArtifactPartType._(
    value: 'pages',
  );

  /// sections
  static final CitedArtifactPartType sections = CitedArtifactPartType._(
    value: 'sections',
  );

  /// paragraphs
  static final CitedArtifactPartType paragraphs = CitedArtifactPartType._(
    value: 'paragraphs',
  );

  /// lines
  static final CitedArtifactPartType lines = CitedArtifactPartType._(
    value: 'lines',
  );

  /// tables
  static final CitedArtifactPartType tables = CitedArtifactPartType._(
    value: 'tables',
  );

  /// figures
  static final CitedArtifactPartType figures = CitedArtifactPartType._(
    value: 'figures',
  );

  /// supplement
  static final CitedArtifactPartType supplement = CitedArtifactPartType._(
    value: 'supplement',
  );

  /// supplement_subpart
  static final CitedArtifactPartType supplement_subpart =
      CitedArtifactPartType._(
    value: 'supplement-subpart',
  );

  /// article_set
  static final CitedArtifactPartType article_set = CitedArtifactPartType._(
    value: 'article-set',
  );

  /// For instances where an Element is present but not value

  static final CitedArtifactPartType elementOnly =
      CitedArtifactPartType._(value: '');

  /// List of all enum-like values
  static final List<CitedArtifactPartType> values = [
    pages,
    sections,
    paragraphs,
    lines,
    tables,
    figures,
    supplement,
    supplement_subpart,
    article_set,
  ];

  /// Clones the current instance
  @override
  CitedArtifactPartType clone() => CitedArtifactPartType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CitedArtifactPartType withElement(Element? newElement) {
    return CitedArtifactPartType._(value: value, element: newElement);
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
  CitedArtifactPartType copyWith({
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
    return CitedArtifactPartType._(
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
