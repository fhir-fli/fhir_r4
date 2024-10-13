/// Code of parameter that is input to the guide.
enum GuideParameterCode {
  /// Display: Apply Metadata Value
  /// Definition: If the value of this string 0..* parameter is one of the metadata fields then all conformance resources will have any specified [Resource].[field] overwritten with the ImplementationGuide.[field], where field is one of: version, date, status, publisher, contact, copyright, experimental, jurisdiction, useContext.
  apply,

  /// Display: Resource Path
  /// Definition: The value of this string 0..* parameter is a subfolder of the build context's location that is to be scanned to load resources. Scope is (if present) a particular resource type.
  path_resource,

  /// Display: Pages Path
  /// Definition: The value of this string 0..1 parameter is a subfolder of the build context's location that contains files that are part of the html content processed by the builder.
  path_pages,

  /// Display: Terminology Cache Path
  /// Definition: The value of this string 0..1 parameter is a subfolder of the build context's location that is used as the terminology cache. If this is not present, the terminology cache is on the local system, not under version control.
  path_tx_cache,

  /// Display: Expansion Profile
  /// Definition: The value of this string 0..* parameter is a parameter (name=value) when expanding value sets for this implementation guide. This is particularly used to specify the versions of published terminologies such as SNOMED CT.
  expansion_parameter,

  /// Display: Broken Links Rule
  /// Definition: The value of this string 0..1 parameter is either "warning" or "error" (default = "error"). If the value is "warning" then IG build tools allow the IG to be considered successfully build even when there is no internal broken links.
  rule_broken_links,

  /// Display: Generate XML
  /// Definition: The value of this boolean 0..1 parameter specifies whether the IG publisher creates examples in XML format. If not present, the Publication Tool decides whether to generate XML.
  generate_xml,

  /// Display: Generate JSON
  /// Definition: The value of this boolean 0..1 parameter specifies whether the IG publisher creates examples in JSON format. If not present, the Publication Tool decides whether to generate JSON.
  generate_json,

  /// Display: Generate Turtle
  /// Definition: The value of this boolean 0..1 parameter specifies whether the IG publisher creates examples in Turtle format. If not present, the Publication Tool decides whether to generate Turtle.
  generate_turtle,

  /// Display: HTML Template
  /// Definition: The value of this string singleton parameter is the name of the file to use as the builder template for each generated page (see templating).
  html_template,
  ;

  @override
  String toString() {
    switch (this) {
      case apply:
        return 'apply';
      case path_resource:
        return 'path-resource';
      case path_pages:
        return 'path-pages';
      case path_tx_cache:
        return 'path-tx-cache';
      case expansion_parameter:
        return 'expansion-parameter';
      case rule_broken_links:
        return 'rule-broken-links';
      case generate_xml:
        return 'generate-xml';
      case generate_json:
        return 'generate-json';
      case generate_turtle:
        return 'generate-turtle';
      case html_template:
        return 'html-template';
    }
  }

  /// Returns a [String] from a [GuideParameterCode] enum.
  String toJson() => toString();

  /// Returns a [GuideParameterCode] from a [String] enum.
  static GuideParameterCode fromString(String str) {
    switch (str) {
      case 'apply':
        return GuideParameterCode.apply;
      case 'path-resource':
        return GuideParameterCode.path_resource;
      case 'path-pages':
        return GuideParameterCode.path_pages;
      case 'path-tx-cache':
        return GuideParameterCode.path_tx_cache;
      case 'expansion-parameter':
        return GuideParameterCode.expansion_parameter;
      case 'rule-broken-links':
        return GuideParameterCode.rule_broken_links;
      case 'generate-xml':
        return GuideParameterCode.generate_xml;
      case 'generate-json':
        return GuideParameterCode.generate_json;
      case 'generate-turtle':
        return GuideParameterCode.generate_turtle;
      case 'html-template':
        return GuideParameterCode.html_template;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [GuideParameterCode] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static GuideParameterCode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
