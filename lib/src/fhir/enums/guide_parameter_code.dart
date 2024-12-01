// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Code of parameter that is input to the guide.
class GuideParameterCode {
  // Private constructor for internal use (like enum)
  GuideParameterCode._(this.fhirCode, {this.element});

  /// Factory constructor to create [GuideParameterCode] from JSON.
  factory GuideParameterCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuideParameterCode.elementOnly.withElement(element);
    }
    return GuideParameterCode._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// GuideParameterCode values
  /// apply
  static final GuideParameterCode apply = GuideParameterCode._(
    'apply',
  );

  /// path_resource
  static final GuideParameterCode path_resource = GuideParameterCode._(
    'path-resource',
  );

  /// path_pages
  static final GuideParameterCode path_pages = GuideParameterCode._(
    'path-pages',
  );

  /// path_tx_cache
  static final GuideParameterCode path_tx_cache = GuideParameterCode._(
    'path-tx-cache',
  );

  /// expansion_parameter
  static final GuideParameterCode expansion_parameter = GuideParameterCode._(
    'expansion-parameter',
  );

  /// rule_broken_links
  static final GuideParameterCode rule_broken_links = GuideParameterCode._(
    'rule-broken-links',
  );

  /// generate_xml
  static final GuideParameterCode generate_xml = GuideParameterCode._(
    'generate-xml',
  );

  /// generate_json
  static final GuideParameterCode generate_json = GuideParameterCode._(
    'generate-json',
  );

  /// generate_turtle
  static final GuideParameterCode generate_turtle = GuideParameterCode._(
    'generate-turtle',
  );

  /// html_template
  static final GuideParameterCode html_template = GuideParameterCode._(
    'html-template',
  );

  /// For instances where an Element is present but not value

  static final GuideParameterCode elementOnly = GuideParameterCode._('');

  /// List of all enum-like values
  static final List<GuideParameterCode> values = [
    apply,
    path_resource,
    path_pages,
    path_tx_cache,
    expansion_parameter,
    rule_broken_links,
    generate_xml,
    generate_json,
    generate_turtle,
    html_template,
  ];

  /// Returns the enum value with an element attached
  GuideParameterCode withElement(Element? newElement) {
    return GuideParameterCode._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
