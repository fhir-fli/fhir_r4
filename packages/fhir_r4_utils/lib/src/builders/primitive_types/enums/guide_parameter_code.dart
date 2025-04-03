// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Code of parameter that is input to the guide.
class GuideParameterCodeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  GuideParameterCodeBuilder._({
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
    return GuideParameterCodeBuilder._(
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

  /// Create empty [GuideParameterCodeBuilder] with element only
  factory GuideParameterCodeBuilder.empty() =>
      GuideParameterCodeBuilder._(valueString: '');

  /// Factory constructor to create [GuideParameterCodeBuilder]
  /// from JSON.
  factory GuideParameterCodeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuideParameterCodeBuilder.elementOnly.withElement(element);
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

  /// apply
  static GuideParameterCodeBuilder apply = GuideParameterCodeBuilder._(
    valueString: 'apply',
    system:
        'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Apply Metadata Value'.toFhirStringBuilder,
  );

  /// path_resource
  static GuideParameterCodeBuilder path_resource = GuideParameterCodeBuilder._(
    valueString: 'path-resource',
    system:
        'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Resource Path'.toFhirStringBuilder,
  );

  /// path_pages
  static GuideParameterCodeBuilder path_pages = GuideParameterCodeBuilder._(
    valueString: 'path-pages',
    system:
        'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Pages Path'.toFhirStringBuilder,
  );

  /// path_tx_cache
  static GuideParameterCodeBuilder path_tx_cache = GuideParameterCodeBuilder._(
    valueString: 'path-tx-cache',
    system:
        'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Terminology Cache Path'.toFhirStringBuilder,
  );

  /// expansion_parameter
  static GuideParameterCodeBuilder expansion_parameter =
      GuideParameterCodeBuilder._(
    valueString: 'expansion-parameter',
    system:
        'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Expansion Profile'.toFhirStringBuilder,
  );

  /// rule_broken_links
  static GuideParameterCodeBuilder rule_broken_links =
      GuideParameterCodeBuilder._(
    valueString: 'rule-broken-links',
    system:
        'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Broken Links Rule'.toFhirStringBuilder,
  );

  /// generate_xml
  static GuideParameterCodeBuilder generate_xml = GuideParameterCodeBuilder._(
    valueString: 'generate-xml',
    system:
        'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Generate XML'.toFhirStringBuilder,
  );

  /// generate_json
  static GuideParameterCodeBuilder generate_json = GuideParameterCodeBuilder._(
    valueString: 'generate-json',
    system:
        'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Generate JSON'.toFhirStringBuilder,
  );

  /// generate_turtle
  static GuideParameterCodeBuilder generate_turtle =
      GuideParameterCodeBuilder._(
    valueString: 'generate-turtle',
    system:
        'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Generate Turtle'.toFhirStringBuilder,
  );

  /// html_template
  static GuideParameterCodeBuilder html_template = GuideParameterCodeBuilder._(
    valueString: 'html-template',
    system:
        'http://hl7.org/fhir/ValueSet/guide-parameter-code'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'HTML Template'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static GuideParameterCodeBuilder elementOnly =
      GuideParameterCodeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<GuideParameterCodeBuilder> values = [
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
  GuideParameterCodeBuilder clone() => GuideParameterCodeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  GuideParameterCodeBuilder withElement(ElementBuilder? newElement) {
    return GuideParameterCodeBuilder._(
        valueString: valueString, element: newElement,);
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
  GuideParameterCodeBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
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
    return GuideParameterCodeBuilder._(
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
