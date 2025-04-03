// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Code of parameter that is input to the guide.
class GuideParameterCode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  GuideParameterCode._({
    required super.valueString,
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
  factory GuideParameterCode(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return GuideParameterCode._(
      valueString: valueString,
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

  /// Create empty [GuideParameterCode] with element only
  factory GuideParameterCode.empty() => GuideParameterCode._(valueString: '');

  /// Factory constructor to create [GuideParameterCode] from JSON.
  factory GuideParameterCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuideParameterCode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GuideParameterCode cannot be constructed from JSON.',
      );
    }
    return GuideParameterCode._(
      valueString: value,
      element: element,
    );
  }

  /// apply
  static final GuideParameterCode apply = GuideParameterCode._(
    valueString: 'apply',
    system: 'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Apply Metadata Value'.toFhirString,
  );

  /// path_resource
  static final GuideParameterCode path_resource = GuideParameterCode._(
    valueString: 'path-resource',
    system: 'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Resource Path'.toFhirString,
  );

  /// path_pages
  static final GuideParameterCode path_pages = GuideParameterCode._(
    valueString: 'path-pages',
    system: 'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Pages Path'.toFhirString,
  );

  /// path_tx_cache
  static final GuideParameterCode path_tx_cache = GuideParameterCode._(
    valueString: 'path-tx-cache',
    system: 'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Terminology Cache Path'.toFhirString,
  );

  /// expansion_parameter
  static final GuideParameterCode expansion_parameter = GuideParameterCode._(
    valueString: 'expansion-parameter',
    system: 'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Expansion Profile'.toFhirString,
  );

  /// rule_broken_links
  static final GuideParameterCode rule_broken_links = GuideParameterCode._(
    valueString: 'rule-broken-links',
    system: 'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Broken Links Rule'.toFhirString,
  );

  /// generate_xml
  static final GuideParameterCode generate_xml = GuideParameterCode._(
    valueString: 'generate-xml',
    system: 'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Generate XML'.toFhirString,
  );

  /// generate_json
  static final GuideParameterCode generate_json = GuideParameterCode._(
    valueString: 'generate-json',
    system: 'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Generate JSON'.toFhirString,
  );

  /// generate_turtle
  static final GuideParameterCode generate_turtle = GuideParameterCode._(
    valueString: 'generate-turtle',
    system: 'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Generate Turtle'.toFhirString,
  );

  /// html_template
  static final GuideParameterCode html_template = GuideParameterCode._(
    valueString: 'html-template',
    system: 'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'HTML Template'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final GuideParameterCode elementOnly =
      GuideParameterCode._(valueString: '');

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

  /// Clones the current instance
  @override
  GuideParameterCode clone() => GuideParameterCode._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

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

  /// Creates a modified copy with updated properties.
  @override
  GuideParameterCode copyWith({
    dynamic newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for GuideParameterCode: $newValue');
    }
    return GuideParameterCode._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
