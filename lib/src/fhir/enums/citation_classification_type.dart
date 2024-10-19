// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Citation classification type
@Entity()
class CitationClassificationType extends FhirCode {
  /// Factory constructor to create [CitationClassificationType] from JSON.
  factory CitationClassificationType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitationClassificationType.elementOnly(element);
    }
    if (values.contains(value)) {
      return CitationClassificationType._(value, element);
    }
    throw ArgumentError(
      'CitationClassificationType.fromJson: JSON value is not a valid value',
    );
  }

  /// citation_source
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationClassificationType.citation_source([this.element])
      : dbValue = 'citation-source',
        super('citation-source', element);

  /// medline_owner
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationClassificationType.medline_owner([this.element])
      : dbValue = 'medline-owner',
        super('medline-owner', element);

  /// fevir_platform_use
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitationClassificationType.fevir_platform_use([this.element])
      : dbValue = 'fevir-platform-use',
        super('fevir-platform-use', element);

  /// For instances where an Element is present but not value

  CitationClassificationType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CitationClassificationType._(super.input, [super.element])
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
    'citation-source',
    'medline-owner',
    'fevir-platform-use',
  ];

  /// Returns the enum value with an element attached
  CitationClassificationType withElement(Element? newElement) {
    return CitationClassificationType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CitationClassificationType.$value';
}
