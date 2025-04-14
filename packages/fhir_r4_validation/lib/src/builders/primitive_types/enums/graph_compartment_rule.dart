// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for GraphCompartmentRule
enum GraphCompartmentRuleBuilderEnum {
  /// identical
  identical,

  /// matching
  matching,

  /// different
  different,

  /// custom
  custom,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case GraphCompartmentRuleBuilderEnum.identical:
        return 'identical';
      case GraphCompartmentRuleBuilderEnum.matching:
        return 'matching';
      case GraphCompartmentRuleBuilderEnum.different:
        return 'different';
      case GraphCompartmentRuleBuilderEnum.custom:
        return 'custom';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GraphCompartmentRuleBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return GraphCompartmentRuleBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GraphCompartmentRuleBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'identical':
        return GraphCompartmentRuleBuilderEnum.identical;
      case 'matching':
        return GraphCompartmentRuleBuilderEnum.matching;
      case 'different':
        return GraphCompartmentRuleBuilderEnum.different;
      case 'custom':
        return GraphCompartmentRuleBuilderEnum.custom;
    }
    return null;
  }
}

/// How a compartment must be linked.
class GraphCompartmentRuleBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  GraphCompartmentRuleBuilder._({
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
  factory GraphCompartmentRuleBuilder(
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
    final valueEnum = GraphCompartmentRuleBuilderEnum.fromString(
      valueString,
    );
    return GraphCompartmentRuleBuilder._(
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

  /// Create empty [GraphCompartmentRuleBuilder]
  /// with element only
  factory GraphCompartmentRuleBuilder.empty() =>
      GraphCompartmentRuleBuilder._(valueString: null);

  /// Factory constructor to create
  /// [GraphCompartmentRuleBuilder] from JSON.
  factory GraphCompartmentRuleBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GraphCompartmentRuleBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GraphCompartmentRuleBuilder cannot be constructed from JSON.',
      );
    }
    return GraphCompartmentRuleBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for GraphCompartmentRuleBuilder
  final GraphCompartmentRuleBuilderEnum? valueEnum;

  /// identical
  static GraphCompartmentRuleBuilder identical = GraphCompartmentRuleBuilder._(
    valueString: 'identical',
    valueEnum: GraphCompartmentRuleBuilderEnum.identical,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/graph-compartment-rule',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Identical',
    ),
  );

  /// matching
  static GraphCompartmentRuleBuilder matching = GraphCompartmentRuleBuilder._(
    valueString: 'matching',
    valueEnum: GraphCompartmentRuleBuilderEnum.matching,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/graph-compartment-rule',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Matching',
    ),
  );

  /// different
  static GraphCompartmentRuleBuilder different = GraphCompartmentRuleBuilder._(
    valueString: 'different',
    valueEnum: GraphCompartmentRuleBuilderEnum.different,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/graph-compartment-rule',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Different',
    ),
  );

  /// custom
  static GraphCompartmentRuleBuilder custom = GraphCompartmentRuleBuilder._(
    valueString: 'custom',
    valueEnum: GraphCompartmentRuleBuilderEnum.custom,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/graph-compartment-rule',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Custom',
    ),
  );

  /// For instances where an Element is present but not value
  static GraphCompartmentRuleBuilder elementOnly =
      GraphCompartmentRuleBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<GraphCompartmentRuleBuilder> values = [
    identical,
    matching,
    different,
    custom,
  ];

  /// Returns the enum value with an element attached
  GraphCompartmentRuleBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return GraphCompartmentRuleBuilder._(
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
