// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for GuideParameterCode
enum GuideParameterCodeBuilderEnum {
  /// apply
  apply,

  /// path-resource
  pathResource,

  /// path-pages
  pathPages,

  /// path-tx-cache
  pathTxCache,

  /// expansion-parameter
  expansionParameter,

  /// rule-broken-links
  ruleBrokenLinks,

  /// generate-xml
  generateXml,

  /// generate-json
  generateJson,

  /// generate-turtle
  generateTurtle,

  /// html-template
  htmlTemplate,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case GuideParameterCodeBuilderEnum.apply:
        return 'apply';
      case GuideParameterCodeBuilderEnum.pathResource:
        return 'path-resource';
      case GuideParameterCodeBuilderEnum.pathPages:
        return 'path-pages';
      case GuideParameterCodeBuilderEnum.pathTxCache:
        return 'path-tx-cache';
      case GuideParameterCodeBuilderEnum.expansionParameter:
        return 'expansion-parameter';
      case GuideParameterCodeBuilderEnum.ruleBrokenLinks:
        return 'rule-broken-links';
      case GuideParameterCodeBuilderEnum.generateXml:
        return 'generate-xml';
      case GuideParameterCodeBuilderEnum.generateJson:
        return 'generate-json';
      case GuideParameterCodeBuilderEnum.generateTurtle:
        return 'generate-turtle';
      case GuideParameterCodeBuilderEnum.htmlTemplate:
        return 'html-template';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GuideParameterCodeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return GuideParameterCodeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GuideParameterCodeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'apply':
        return GuideParameterCodeBuilderEnum.apply;
      case 'path-resource':
        return GuideParameterCodeBuilderEnum.pathResource;
      case 'path-pages':
        return GuideParameterCodeBuilderEnum.pathPages;
      case 'path-tx-cache':
        return GuideParameterCodeBuilderEnum.pathTxCache;
      case 'expansion-parameter':
        return GuideParameterCodeBuilderEnum.expansionParameter;
      case 'rule-broken-links':
        return GuideParameterCodeBuilderEnum.ruleBrokenLinks;
      case 'generate-xml':
        return GuideParameterCodeBuilderEnum.generateXml;
      case 'generate-json':
        return GuideParameterCodeBuilderEnum.generateJson;
      case 'generate-turtle':
        return GuideParameterCodeBuilderEnum.generateTurtle;
      case 'html-template':
        return GuideParameterCodeBuilderEnum.htmlTemplate;
    }
    return null;
  }
}

/// Code of parameter that is input to the guide.
class GuideParameterCodeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  GuideParameterCodeBuilder._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory GuideParameterCodeBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = GuideParameterCodeBuilderEnum.fromString(
      valueString,
    );
    return GuideParameterCodeBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [GuideParameterCodeBuilder]
  /// with element only
  factory GuideParameterCodeBuilder.empty() =>
      GuideParameterCodeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [GuideParameterCodeBuilder] from JSON.
  factory GuideParameterCodeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuideParameterCodeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GuideParameterCodeBuilder cannot be constructed from JSON.',
      );
    }
    return GuideParameterCodeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for GuideParameterCodeBuilder
  final GuideParameterCodeBuilderEnum? valueEnum;

  /// apply
  static GuideParameterCodeBuilder apply = GuideParameterCodeBuilder._(
    valueString: 'apply',
    valueEnum: GuideParameterCodeBuilderEnum.apply,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-parameter-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Apply Metadata Value',
    ),
  );

  /// path_resource
  static GuideParameterCodeBuilder pathResource = GuideParameterCodeBuilder._(
    valueString: 'path-resource',
    valueEnum: GuideParameterCodeBuilderEnum.pathResource,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-parameter-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Resource Path',
    ),
  );

  /// path_pages
  static GuideParameterCodeBuilder pathPages = GuideParameterCodeBuilder._(
    valueString: 'path-pages',
    valueEnum: GuideParameterCodeBuilderEnum.pathPages,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-parameter-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Pages Path',
    ),
  );

  /// path_tx_cache
  static GuideParameterCodeBuilder pathTxCache = GuideParameterCodeBuilder._(
    valueString: 'path-tx-cache',
    valueEnum: GuideParameterCodeBuilderEnum.pathTxCache,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-parameter-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Terminology Cache Path',
    ),
  );

  /// expansion_parameter
  static GuideParameterCodeBuilder expansionParameter =
      GuideParameterCodeBuilder._(
    valueString: 'expansion-parameter',
    valueEnum: GuideParameterCodeBuilderEnum.expansionParameter,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-parameter-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Expansion Profile',
    ),
  );

  /// rule_broken_links
  static GuideParameterCodeBuilder ruleBrokenLinks =
      GuideParameterCodeBuilder._(
    valueString: 'rule-broken-links',
    valueEnum: GuideParameterCodeBuilderEnum.ruleBrokenLinks,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-parameter-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Broken Links Rule',
    ),
  );

  /// generate_xml
  static GuideParameterCodeBuilder generateXml = GuideParameterCodeBuilder._(
    valueString: 'generate-xml',
    valueEnum: GuideParameterCodeBuilderEnum.generateXml,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-parameter-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Generate XML',
    ),
  );

  /// generate_json
  static GuideParameterCodeBuilder generateJson = GuideParameterCodeBuilder._(
    valueString: 'generate-json',
    valueEnum: GuideParameterCodeBuilderEnum.generateJson,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-parameter-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Generate JSON',
    ),
  );

  /// generate_turtle
  static GuideParameterCodeBuilder generateTurtle = GuideParameterCodeBuilder._(
    valueString: 'generate-turtle',
    valueEnum: GuideParameterCodeBuilderEnum.generateTurtle,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-parameter-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Generate Turtle',
    ),
  );

  /// html_template
  static GuideParameterCodeBuilder htmlTemplate = GuideParameterCodeBuilder._(
    valueString: 'html-template',
    valueEnum: GuideParameterCodeBuilderEnum.htmlTemplate,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-parameter-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'HTML Template',
    ),
  );

  /// For instances where an Element is present but not value
  static GuideParameterCodeBuilder elementOnly = GuideParameterCodeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<GuideParameterCodeBuilder> values = [
    apply,
    pathResource,
    pathPages,
    pathTxCache,
    expansionParameter,
    ruleBrokenLinks,
    generateXml,
    generateJson,
    generateTurtle,
    htmlTemplate,
  ];

  /// Returns the enum value with an element attached
  GuideParameterCodeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return GuideParameterCodeBuilder._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';
}
