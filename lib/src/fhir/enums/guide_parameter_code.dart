// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Code of parameter that is input to the guide.
enum GuideParameterCode {
  /// Display: Apply Metadata Value
  /// Definition: If the value of this string 0..* parameter is one of the metadata fields then all conformance resources will have any specified [Resource].[field] overwritten with the ImplementationGuide.[field], where field is one of: version, date, status, publisher, contact, copyright, experimental, jurisdiction, useContext.
  apply('apply'),

  /// Display: Resource Path
  /// Definition: The value of this string 0..* parameter is a subfolder of the build context's location that is to be scanned to load resources. Scope is (if present) a particular resource type.
  path_resource('path-resource'),

  /// Display: Pages Path
  /// Definition: The value of this string 0..1 parameter is a subfolder of the build context's location that contains files that are part of the html content processed by the builder.
  path_pages('path-pages'),

  /// Display: Terminology Cache Path
  /// Definition: The value of this string 0..1 parameter is a subfolder of the build context's location that is used as the terminology cache. If this is not present, the terminology cache is on the local system, not under version control.
  path_tx_cache('path-tx-cache'),

  /// Display: Expansion Profile
  /// Definition: The value of this string 0..* parameter is a parameter (name=value) when expanding value sets for this implementation guide. This is particularly used to specify the versions of published terminologies such as SNOMED CT.
  expansion_parameter('expansion-parameter'),

  /// Display: Broken Links Rule
  /// Definition: The value of this string 0..1 parameter is either "warning" or "error" (default = "error"). If the value is "warning" then IG build tools allow the IG to be considered successfully build even when there is no internal broken links.
  rule_broken_links('rule-broken-links'),

  /// Display: Generate XML
  /// Definition: The value of this boolean 0..1 parameter specifies whether the IG publisher creates examples in XML format. If not present, the Publication Tool decides whether to generate XML.
  generate_xml('generate-xml'),

  /// Display: Generate JSON
  /// Definition: The value of this boolean 0..1 parameter specifies whether the IG publisher creates examples in JSON format. If not present, the Publication Tool decides whether to generate JSON.
  generate_json('generate-json'),

  /// Display: Generate Turtle
  /// Definition: The value of this boolean 0..1 parameter specifies whether the IG publisher creates examples in Turtle format. If not present, the Publication Tool decides whether to generate Turtle.
  generate_turtle('generate-turtle'),

  /// Display: HTML Template
  /// Definition: The value of this string singleton parameter is the name of the file to use as the builder template for each generated page (see templating).
  html_template('html-template'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const GuideParameterCode(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [GuideParameterCode] instances.
  static GuideParameterCode fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuideParameterCode.elementOnly.withElement(element);
    }
    return GuideParameterCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  GuideParameterCode withElement(Element? newElement) {
    return GuideParameterCode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
