// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Code the reason for different URLs, eg abstract and full-text.
@Entity()
class ArticleUrlType extends FhirCode {
  /// Factory constructor to create [ArticleUrlType] from JSON.
  factory ArticleUrlType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArticleUrlType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ArticleUrlType._(value, element);
    }
    throw ArgumentError(
      'ArticleUrlType.fromJson: JSON value is not a valid value',
    );
  }

  /// abstract_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArticleUrlType.abstract_([this.element])
      : dbValue = 'abstract',
        super('abstract', element);

  /// abstract_version
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArticleUrlType.abstract_version([this.element])
      : dbValue = 'abstract-version',
        super('abstract-version', element);

  /// doi_based
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArticleUrlType.doi_based([this.element])
      : dbValue = 'doi-based',
        super('doi-based', element);

  /// full_text
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArticleUrlType.full_text([this.element])
      : dbValue = 'full-text',
        super('full-text', element);

  /// full_text_version
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArticleUrlType.full_text_version([this.element])
      : dbValue = 'full-text-version',
        super('full-text-version', element);

  /// pdf
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArticleUrlType.pdf([this.element])
      : dbValue = 'pdf',
        super('pdf', element);

  /// pdf_version
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArticleUrlType.pdf_version([this.element])
      : dbValue = 'pdf-version',
        super('pdf-version', element);

  /// webpage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArticleUrlType.webpage([this.element])
      : dbValue = 'webpage',
        super('webpage', element);

  /// not_specified
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArticleUrlType.not_specified([this.element])
      : dbValue = 'not-specified',
        super('not-specified', element);

  /// json
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArticleUrlType.json([this.element])
      : dbValue = 'json',
        super('json', element);

  /// json_version
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArticleUrlType.json_version([this.element])
      : dbValue = 'json-version',
        super('json-version', element);

  /// xml
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArticleUrlType.xml([this.element])
      : dbValue = 'xml',
        super('xml', element);

  /// xml_version
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArticleUrlType.xml_version([this.element])
      : dbValue = 'xml-version',
        super('xml-version', element);

  /// supplement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArticleUrlType.supplement([this.element])
      : dbValue = 'supplement',
        super('supplement', element);

  /// supplementary_file_directory
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArticleUrlType.supplementary_file_directory([this.element])
      : dbValue = 'supplementary-file-directory',
        super('supplementary-file-directory', element);

  /// compressed_file
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ArticleUrlType.compressed_file([this.element])
      : dbValue = 'compressed-file',
        super('compressed-file', element);

  /// For instances where an Element is present but not value

  ArticleUrlType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ArticleUrlType._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'abstract',
    'abstract-version',
    'doi-based',
    'full-text',
    'full-text-version',
    'pdf',
    'pdf-version',
    'webpage',
    'not-specified',
    'json',
    'json-version',
    'xml',
    'xml-version',
    'supplement',
    'supplementary-file-directory',
    'compressed-file',
  ];

  /// Returns the enum value with an element attached
  ArticleUrlType withElement(Element? newElement) {
    return ArticleUrlType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ArticleUrlType.$value';
}
