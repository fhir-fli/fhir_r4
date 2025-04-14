// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ResearchElementType
enum ResearchElementTypeBuilderEnum {
  /// population
  population,

  /// exposure
  exposure,

  /// outcome
  outcome,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ResearchElementTypeBuilderEnum.population:
        return 'population';
      case ResearchElementTypeBuilderEnum.exposure:
        return 'exposure';
      case ResearchElementTypeBuilderEnum.outcome:
        return 'outcome';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ResearchElementTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ResearchElementTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ResearchElementTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'population':
        return ResearchElementTypeBuilderEnum.population;
      case 'exposure':
        return ResearchElementTypeBuilderEnum.exposure;
      case 'outcome':
        return ResearchElementTypeBuilderEnum.outcome;
    }
    return null;
  }
}

/// The possible types of research elements (E.g. Population, Exposure,
/// Outcome).
class ResearchElementTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ResearchElementTypeBuilder._({
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
  factory ResearchElementTypeBuilder(
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
    final valueEnum = ResearchElementTypeBuilderEnum.fromString(
      valueString,
    );
    return ResearchElementTypeBuilder._(
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

  /// Create empty [ResearchElementTypeBuilder]
  /// with element only
  factory ResearchElementTypeBuilder.empty() =>
      ResearchElementTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ResearchElementTypeBuilder] from JSON.
  factory ResearchElementTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchElementTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResearchElementTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ResearchElementTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ResearchElementTypeBuilder
  final ResearchElementTypeBuilderEnum? valueEnum;

  /// population
  static ResearchElementTypeBuilder population = ResearchElementTypeBuilder._(
    valueString: 'population',
    valueEnum: ResearchElementTypeBuilderEnum.population,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-element-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Population',
    ),
  );

  /// exposure
  static ResearchElementTypeBuilder exposure = ResearchElementTypeBuilder._(
    valueString: 'exposure',
    valueEnum: ResearchElementTypeBuilderEnum.exposure,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-element-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Exposure',
    ),
  );

  /// outcome
  static ResearchElementTypeBuilder outcome = ResearchElementTypeBuilder._(
    valueString: 'outcome',
    valueEnum: ResearchElementTypeBuilderEnum.outcome,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/research-element-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Outcome',
    ),
  );

  /// For instances where an Element is present but not value
  static ResearchElementTypeBuilder elementOnly = ResearchElementTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ResearchElementTypeBuilder> values = [
    population,
    exposure,
    outcome,
  ];

  /// Returns the enum value with an element attached
  ResearchElementTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ResearchElementTypeBuilder._(
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
