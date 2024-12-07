// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Code the reason for different URLs, eg abstract and full-text.
class ArticleUrlType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ArticleUrlType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ArticleUrlType] from JSON.
  factory ArticleUrlType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArticleUrlType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ArticleUrlType cannot be constructed from JSON.',
      );
    }
    return ArticleUrlType._(value: value, element: element);
  }

  /// abstract_
  static final ArticleUrlType abstract_ = ArticleUrlType._(
    value: 'abstract',
  );

  /// abstract_version
  static final ArticleUrlType abstract_version = ArticleUrlType._(
    value: 'abstract-version',
  );

  /// doi_based
  static final ArticleUrlType doi_based = ArticleUrlType._(
    value: 'doi-based',
  );

  /// full_text
  static final ArticleUrlType full_text = ArticleUrlType._(
    value: 'full-text',
  );

  /// full_text_version
  static final ArticleUrlType full_text_version = ArticleUrlType._(
    value: 'full-text-version',
  );

  /// pdf
  static final ArticleUrlType pdf = ArticleUrlType._(
    value: 'pdf',
  );

  /// pdf_version
  static final ArticleUrlType pdf_version = ArticleUrlType._(
    value: 'pdf-version',
  );

  /// webpage
  static final ArticleUrlType webpage = ArticleUrlType._(
    value: 'webpage',
  );

  /// not_specified
  static final ArticleUrlType not_specified = ArticleUrlType._(
    value: 'not-specified',
  );

  /// json
  static final ArticleUrlType json = ArticleUrlType._(
    value: 'json',
  );

  /// json_version
  static final ArticleUrlType json_version = ArticleUrlType._(
    value: 'json-version',
  );

  /// xml
  static final ArticleUrlType xml = ArticleUrlType._(
    value: 'xml',
  );

  /// xml_version
  static final ArticleUrlType xml_version = ArticleUrlType._(
    value: 'xml-version',
  );

  /// supplement
  static final ArticleUrlType supplement = ArticleUrlType._(
    value: 'supplement',
  );

  /// supplementary_file_directory
  static final ArticleUrlType supplementary_file_directory = ArticleUrlType._(
    value: 'supplementary-file-directory',
  );

  /// compressed_file
  static final ArticleUrlType compressed_file = ArticleUrlType._(
    value: 'compressed-file',
  );

  /// For instances where an Element is present but not value

  static final ArticleUrlType elementOnly = ArticleUrlType._(value: '');

  /// List of all enum-like values
  static final List<ArticleUrlType> values = [
    abstract_,
    abstract_version,
    doi_based,
    full_text,
    full_text_version,
    pdf,
    pdf_version,
    webpage,
    not_specified,
    json,
    json_version,
    xml,
    xml_version,
    supplement,
    supplementary_file_directory,
    compressed_file,
  ];

  /// Clones the current instance
  @override
  ArticleUrlType clone() => ArticleUrlType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ArticleUrlType withElement(Element? newElement) {
    return ArticleUrlType._(value: value, element: newElement);
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
  ArticleUrlType copyWith({
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
    return ArticleUrlType._(
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
