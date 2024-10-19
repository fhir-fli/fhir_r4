// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Code of parameter that is input to the guide.
@Entity()
class GuideParameterCode extends FhirCode {
  /// Factory constructor to create [GuideParameterCode] from JSON.
  factory GuideParameterCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuideParameterCode.elementOnly(element);
    }
    if (values.contains(value)) {
      return GuideParameterCode._(value, element);
    }
    throw ArgumentError(
      'GuideParameterCode.fromJson: JSON value is not a valid value',
    );
  }

  /// apply
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GuideParameterCode.apply([this.element])
      : dbValue = 'apply',
        super('apply', element);

  /// path_resource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GuideParameterCode.path_resource([this.element])
      : dbValue = 'path-resource',
        super('path-resource', element);

  /// path_pages
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GuideParameterCode.path_pages([this.element])
      : dbValue = 'path-pages',
        super('path-pages', element);

  /// path_tx_cache
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GuideParameterCode.path_tx_cache([this.element])
      : dbValue = 'path-tx-cache',
        super('path-tx-cache', element);

  /// expansion_parameter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GuideParameterCode.expansion_parameter([this.element])
      : dbValue = 'expansion-parameter',
        super('expansion-parameter', element);

  /// rule_broken_links
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GuideParameterCode.rule_broken_links([this.element])
      : dbValue = 'rule-broken-links',
        super('rule-broken-links', element);

  /// generate_xml
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GuideParameterCode.generate_xml([this.element])
      : dbValue = 'generate-xml',
        super('generate-xml', element);

  /// generate_json
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GuideParameterCode.generate_json([this.element])
      : dbValue = 'generate-json',
        super('generate-json', element);

  /// generate_turtle
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GuideParameterCode.generate_turtle([this.element])
      : dbValue = 'generate-turtle',
        super('generate-turtle', element);

  /// html_template
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GuideParameterCode.html_template([this.element])
      : dbValue = 'html-template',
        super('html-template', element);

  /// For instances where an Element is present but not value

  GuideParameterCode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  GuideParameterCode._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'apply',
    'path-resource',
    'path-pages',
    'path-tx-cache',
    'expansion-parameter',
    'rule-broken-links',
    'generate-xml',
    'generate-json',
    'generate-turtle',
    'html-template',
  ];

  /// Returns the enum value with an element attached
  GuideParameterCode withElement(Element? newElement) {
    return GuideParameterCode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GuideParameterCode.$value';
}
