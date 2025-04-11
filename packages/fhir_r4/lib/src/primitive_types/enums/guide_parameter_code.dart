// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for GuideParameterCode
enum GuideParameterCodeEnum {
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
      case GuideParameterCodeEnum.apply:
        return 'apply';
      case GuideParameterCodeEnum.pathResource:
        return 'path-resource';
      case GuideParameterCodeEnum.pathPages:
        return 'path-pages';
      case GuideParameterCodeEnum.pathTxCache:
        return 'path-tx-cache';
      case GuideParameterCodeEnum.expansionParameter:
        return 'expansion-parameter';
      case GuideParameterCodeEnum.ruleBrokenLinks:
        return 'rule-broken-links';
      case GuideParameterCodeEnum.generateXml:
        return 'generate-xml';
      case GuideParameterCodeEnum.generateJson:
        return 'generate-json';
      case GuideParameterCodeEnum.generateTurtle:
        return 'generate-turtle';
      case GuideParameterCodeEnum.htmlTemplate:
        return 'html-template';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GuideParameterCodeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return GuideParameterCodeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GuideParameterCodeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'apply':
        return GuideParameterCodeEnum.apply;
      case 'path-resource':
        return GuideParameterCodeEnum.pathResource;
      case 'path-pages':
        return GuideParameterCodeEnum.pathPages;
      case 'path-tx-cache':
        return GuideParameterCodeEnum.pathTxCache;
      case 'expansion-parameter':
        return GuideParameterCodeEnum.expansionParameter;
      case 'rule-broken-links':
        return GuideParameterCodeEnum.ruleBrokenLinks;
      case 'generate-xml':
        return GuideParameterCodeEnum.generateXml;
      case 'generate-json':
        return GuideParameterCodeEnum.generateJson;
      case 'generate-turtle':
        return GuideParameterCodeEnum.generateTurtle;
      case 'html-template':
        return GuideParameterCodeEnum.htmlTemplate;
    }
    return null;
  }
}

/// Code of parameter that is input to the guide.
class GuideParameterCode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const GuideParameterCode._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory GuideParameterCode(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = GuideParameterCodeEnum.fromString(valueString);
    return GuideParameterCode._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [GuideParameterCode]
  /// from JSON.
  factory GuideParameterCode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = GuideParameterCodeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuideParameterCode._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GuideParameterCode cannot be constructed from JSON.',
      );
    }
    return GuideParameterCode._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for GuideParameterCode
  final GuideParameterCodeEnum? valueEnum;

  /// apply
  static const GuideParameterCode apply = GuideParameterCode._(
    valueString: 'apply',
    valueEnum: GuideParameterCodeEnum.apply,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-parameter-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Apply Metadata Value',
    ),
  );

  /// path_resource
  static const GuideParameterCode pathResource = GuideParameterCode._(
    valueString: 'path-resource',
    valueEnum: GuideParameterCodeEnum.pathResource,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-parameter-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Resource Path',
    ),
  );

  /// path_pages
  static const GuideParameterCode pathPages = GuideParameterCode._(
    valueString: 'path-pages',
    valueEnum: GuideParameterCodeEnum.pathPages,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-parameter-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Pages Path',
    ),
  );

  /// path_tx_cache
  static const GuideParameterCode pathTxCache = GuideParameterCode._(
    valueString: 'path-tx-cache',
    valueEnum: GuideParameterCodeEnum.pathTxCache,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-parameter-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Terminology Cache Path',
    ),
  );

  /// expansion_parameter
  static const GuideParameterCode expansionParameter = GuideParameterCode._(
    valueString: 'expansion-parameter',
    valueEnum: GuideParameterCodeEnum.expansionParameter,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-parameter-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Expansion Profile',
    ),
  );

  /// rule_broken_links
  static const GuideParameterCode ruleBrokenLinks = GuideParameterCode._(
    valueString: 'rule-broken-links',
    valueEnum: GuideParameterCodeEnum.ruleBrokenLinks,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-parameter-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Broken Links Rule',
    ),
  );

  /// generate_xml
  static const GuideParameterCode generateXml = GuideParameterCode._(
    valueString: 'generate-xml',
    valueEnum: GuideParameterCodeEnum.generateXml,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-parameter-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Generate XML',
    ),
  );

  /// generate_json
  static const GuideParameterCode generateJson = GuideParameterCode._(
    valueString: 'generate-json',
    valueEnum: GuideParameterCodeEnum.generateJson,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-parameter-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Generate JSON',
    ),
  );

  /// generate_turtle
  static const GuideParameterCode generateTurtle = GuideParameterCode._(
    valueString: 'generate-turtle',
    valueEnum: GuideParameterCodeEnum.generateTurtle,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-parameter-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Generate Turtle',
    ),
  );

  /// html_template
  static const GuideParameterCode htmlTemplate = GuideParameterCode._(
    valueString: 'html-template',
    valueEnum: GuideParameterCodeEnum.htmlTemplate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-parameter-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'HTML Template',
    ),
  );

  /// List of all enum-like values
  static final List<GuideParameterCode> values = [
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
  GuideParameterCode withElement(Element? newElement) {
    return GuideParameterCode._(
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

  @override
  GuideParameterCode clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  GuideParameterCodeCopyWithImpl<GuideParameterCode> get copyWith =>
      GuideParameterCodeCopyWithImpl<GuideParameterCode>(
        this,
        (v) => v as GuideParameterCode,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class GuideParameterCodeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  GuideParameterCodeCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      GuideParameterCode(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
