// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Code of parameter that is input to the guide.
class GuideParameterCode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  GuideParameterCode._({
    required super.validatedValue,
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
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return GuideParameterCode._(
      validatedValue: validated,
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
  factory GuideParameterCode.empty() =>
      GuideParameterCode._(validatedValue: '');

  /// Factory constructor to create [GuideParameterCode] from JSON.
  factory GuideParameterCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuideParameterCode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'GuideParameterCode cannot be constructed from JSON.',);
    }
    return GuideParameterCode._(validatedValue: value, element: element);
  }

  /// apply
  static final GuideParameterCode apply = GuideParameterCode._(
    validatedValue: 'apply',
    system: 'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Apply Metadata Value'.toFhirString,
  );

  /// path_resource
  static final GuideParameterCode path_resource = GuideParameterCode._(
    validatedValue: 'path-resource',
    system: 'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Resource Path'.toFhirString,
  );

  /// path_pages
  static final GuideParameterCode path_pages = GuideParameterCode._(
    validatedValue: 'path-pages',
    system: 'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Pages Path'.toFhirString,
  );

  /// path_tx_cache
  static final GuideParameterCode path_tx_cache = GuideParameterCode._(
    validatedValue: 'path-tx-cache',
    system: 'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Terminology Cache Path'.toFhirString,
  );

  /// expansion_parameter
  static final GuideParameterCode expansion_parameter = GuideParameterCode._(
    validatedValue: 'expansion-parameter',
    system: 'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Expansion Profile'.toFhirString,
  );

  /// rule_broken_links
  static final GuideParameterCode rule_broken_links = GuideParameterCode._(
    validatedValue: 'rule-broken-links',
    system: 'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Broken Links Rule'.toFhirString,
  );

  /// generate_xml
  static final GuideParameterCode generate_xml = GuideParameterCode._(
    validatedValue: 'generate-xml',
    system: 'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Generate XML'.toFhirString,
  );

  /// generate_json
  static final GuideParameterCode generate_json = GuideParameterCode._(
    validatedValue: 'generate-json',
    system: 'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Generate JSON'.toFhirString,
  );

  /// generate_turtle
  static final GuideParameterCode generate_turtle = GuideParameterCode._(
    validatedValue: 'generate-turtle',
    system: 'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Generate Turtle'.toFhirString,
  );

  /// html_template
  static final GuideParameterCode html_template = GuideParameterCode._(
    validatedValue: 'html-template',
    system: 'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'HTML Template'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final GuideParameterCode elementOnly =
      GuideParameterCode._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  GuideParameterCode withElement(Element? newElement) {
    return GuideParameterCode._(validatedValue: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  GuideParameterCode copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return GuideParameterCode._(
      validatedValue: newValue ?? value,
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
