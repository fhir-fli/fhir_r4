// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Code of parameter that is input to the guide.
@collection
class GuideParameterCode {
  /// Constructor for internal use (like enum)
  GuideParameterCode({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// GuideParameterCode values
  /// apply
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GuideParameterCode apply = GuideParameterCode(
    fhirCode: 'apply',
  );

  /// path_resource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GuideParameterCode path_resource = GuideParameterCode(
    fhirCode: 'path-resource',
  );

  /// path_pages
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GuideParameterCode path_pages = GuideParameterCode(
    fhirCode: 'path-pages',
  );

  /// path_tx_cache
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GuideParameterCode path_tx_cache = GuideParameterCode(
    fhirCode: 'path-tx-cache',
  );

  /// expansion_parameter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GuideParameterCode expansion_parameter = GuideParameterCode(
    fhirCode: 'expansion-parameter',
  );

  /// rule_broken_links
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GuideParameterCode rule_broken_links = GuideParameterCode(
    fhirCode: 'rule-broken-links',
  );

  /// generate_xml
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GuideParameterCode generate_xml = GuideParameterCode(
    fhirCode: 'generate-xml',
  );

  /// generate_json
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GuideParameterCode generate_json = GuideParameterCode(
    fhirCode: 'generate-json',
  );

  /// generate_turtle
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GuideParameterCode generate_turtle = GuideParameterCode(
    fhirCode: 'generate-turtle',
  );

  /// html_template
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GuideParameterCode html_template = GuideParameterCode(
    fhirCode: 'html-template',
  );

  /// For instances where an Element is present but not value

  static final GuideParameterCode elementOnly = GuideParameterCode();

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
    return GuideParameterCode(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [GuideParameterCode] from JSON.
  static GuideParameterCode fromJson(Map<String, dynamic> json) {
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GuideParameterCode.$fhirCode';
}
