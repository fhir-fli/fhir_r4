// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A code that indicates how the page is generated.
class GuidePageGenerationBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  GuidePageGenerationBuilder._({
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
  factory GuidePageGenerationBuilder(
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
    return GuidePageGenerationBuilder._(
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

  /// Create empty [GuidePageGenerationBuilder] with element only
  factory GuidePageGenerationBuilder.empty() =>
      GuidePageGenerationBuilder._(valueString: '');

  /// Factory constructor to create [GuidePageGenerationBuilder]
  /// from JSON.
  factory GuidePageGenerationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuidePageGenerationBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GuidePageGenerationBuilder cannot be constructed from JSON.',
      );
    }
    return GuidePageGenerationBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// html
  static GuidePageGenerationBuilder html = GuidePageGenerationBuilder._(
    valueString: 'html',
    system:
        'http://hl7.org/fhir/ValueSet/guide-page-generation'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'HTML'.toFhirStringBuilder,
  );

  /// markdown
  static GuidePageGenerationBuilder markdown = GuidePageGenerationBuilder._(
    valueString: 'markdown',
    system:
        'http://hl7.org/fhir/ValueSet/guide-page-generation'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Markdown'.toFhirStringBuilder,
  );

  /// xml
  static GuidePageGenerationBuilder xml = GuidePageGenerationBuilder._(
    valueString: 'xml',
    system:
        'http://hl7.org/fhir/ValueSet/guide-page-generation'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'XML'.toFhirStringBuilder,
  );

  /// generated
  static GuidePageGenerationBuilder generated = GuidePageGenerationBuilder._(
    valueString: 'generated',
    system:
        'http://hl7.org/fhir/ValueSet/guide-page-generation'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Generated'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static GuidePageGenerationBuilder elementOnly =
      GuidePageGenerationBuilder._(valueString: '');

  /// List of all enum-like values
  static List<GuidePageGenerationBuilder> values = [
    html,
    markdown,
    xml,
    generated,
  ];

  /// Clones the current instance
  @override
  GuidePageGenerationBuilder clone() => GuidePageGenerationBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  GuidePageGenerationBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return GuidePageGenerationBuilder._(
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
  GuidePageGenerationBuilder copyWith({
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
      throw ArgumentError(
        'Invalid input for GuidePageGeneration: $newValue',
      );
    }
    return GuidePageGenerationBuilder._(
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
