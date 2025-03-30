// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A code that indicates how the page is generated.
class GuidePageGenerationBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  GuidePageGenerationBuilder._({
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
  factory GuidePageGenerationBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return GuidePageGenerationBuilder._(
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

  /// Create empty [GuidePageGenerationBuilder] with element only
  factory GuidePageGenerationBuilder.empty() =>
      GuidePageGenerationBuilder._(validatedValue: '');

  /// Factory constructor to create [GuidePageGenerationBuilder]
  /// from JSON.
  factory GuidePageGenerationBuilder.fromJson(Map<String, dynamic> json) {
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
      validatedValue: value,
      element: element,
    );
  }

  /// html
  static GuidePageGenerationBuilder html = GuidePageGenerationBuilder._(
    validatedValue: 'html',
    system:
        'http://hl7.org/fhir/ValueSet/guide-page-generation'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'HTML'.toFhirStringBuilder,
  );

  /// markdown
  static GuidePageGenerationBuilder markdown = GuidePageGenerationBuilder._(
    validatedValue: 'markdown',
    system:
        'http://hl7.org/fhir/ValueSet/guide-page-generation'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Markdown'.toFhirStringBuilder,
  );

  /// xml
  static GuidePageGenerationBuilder xml = GuidePageGenerationBuilder._(
    validatedValue: 'xml',
    system:
        'http://hl7.org/fhir/ValueSet/guide-page-generation'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'XML'.toFhirStringBuilder,
  );

  /// generated
  static GuidePageGenerationBuilder generated = GuidePageGenerationBuilder._(
    validatedValue: 'generated',
    system:
        'http://hl7.org/fhir/ValueSet/guide-page-generation'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Generated'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static GuidePageGenerationBuilder elementOnly =
      GuidePageGenerationBuilder._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  GuidePageGenerationBuilder withElement(ElementBuilder? newElement) {
    return GuidePageGenerationBuilder._(
      validatedValue: value,
      element: newElement,
    );
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
  GuidePageGenerationBuilder copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return GuidePageGenerationBuilder._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
