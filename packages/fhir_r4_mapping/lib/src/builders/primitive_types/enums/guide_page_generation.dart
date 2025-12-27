part of '../primitive_types.dart';

/// Actual enum for GuidePageGeneration
enum GuidePageGenerationBuilderEnum {
  /// html
  html,

  /// markdown
  markdown,

  /// xml
  xml,

  /// generated
  generated,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case GuidePageGenerationBuilderEnum.html:
        return 'html';
      case GuidePageGenerationBuilderEnum.markdown:
        return 'markdown';
      case GuidePageGenerationBuilderEnum.xml:
        return 'xml';
      case GuidePageGenerationBuilderEnum.generated:
        return 'generated';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GuidePageGenerationBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return GuidePageGenerationBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GuidePageGenerationBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'html':
        return GuidePageGenerationBuilderEnum.html;
      case 'markdown':
        return GuidePageGenerationBuilderEnum.markdown;
      case 'xml':
        return GuidePageGenerationBuilderEnum.xml;
      case 'generated':
        return GuidePageGenerationBuilderEnum.generated;
    }
    return null;
  }
}

/// A code that indicates how the page is generated.
class GuidePageGenerationBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  GuidePageGenerationBuilder._({
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
    final valueEnum = GuidePageGenerationBuilderEnum.fromString(
      valueString,
    );
    return GuidePageGenerationBuilder._(
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

  /// Create empty [GuidePageGenerationBuilder]
  /// with element only
  factory GuidePageGenerationBuilder.empty() =>
      GuidePageGenerationBuilder._(valueString: null);

  /// Factory constructor to create
  /// [GuidePageGenerationBuilder] from JSON.
  factory GuidePageGenerationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuidePageGenerationBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for GuidePageGenerationBuilder
  final GuidePageGenerationBuilderEnum? valueEnum;

  /// html
  static GuidePageGenerationBuilder html = GuidePageGenerationBuilder._(
    valueString: 'html',
    valueEnum: GuidePageGenerationBuilderEnum.html,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-page-generation',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'HTML',
    ),
  );

  /// markdown
  static GuidePageGenerationBuilder markdown = GuidePageGenerationBuilder._(
    valueString: 'markdown',
    valueEnum: GuidePageGenerationBuilderEnum.markdown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-page-generation',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Markdown',
    ),
  );

  /// xml
  static GuidePageGenerationBuilder xml = GuidePageGenerationBuilder._(
    valueString: 'xml',
    valueEnum: GuidePageGenerationBuilderEnum.xml,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-page-generation',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'XML',
    ),
  );

  /// generated
  static GuidePageGenerationBuilder generated = GuidePageGenerationBuilder._(
    valueString: 'generated',
    valueEnum: GuidePageGenerationBuilderEnum.generated,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-page-generation',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Generated',
    ),
  );

  /// For instances where an Element is present but not value
  static GuidePageGenerationBuilder elementOnly = GuidePageGenerationBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<GuidePageGenerationBuilder> values = [
    html,
    markdown,
    xml,
    generated,
  ];

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
}
