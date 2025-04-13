// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ExampleScenarioActorType
enum ExampleScenarioActorTypeBuilderEnum {
  /// person
  person,

  /// entity
  entity,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ExampleScenarioActorTypeBuilderEnum.person:
        return 'person';
      case ExampleScenarioActorTypeBuilderEnum.entity:
        return 'entity';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ExampleScenarioActorTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ExampleScenarioActorTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ExampleScenarioActorTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'person':
        return ExampleScenarioActorTypeBuilderEnum.person;
      case 'entity':
        return ExampleScenarioActorTypeBuilderEnum.entity;
    }
    return null;
  }
}

/// The type of actor - system or human.
class ExampleScenarioActorTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ExampleScenarioActorTypeBuilder._({
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
  factory ExampleScenarioActorTypeBuilder(
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
    final valueEnum = ExampleScenarioActorTypeBuilderEnum.fromString(
      valueString,
    );
    return ExampleScenarioActorTypeBuilder._(
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

  /// Create empty [ExampleScenarioActorTypeBuilder]
  /// with element only
  factory ExampleScenarioActorTypeBuilder.empty() =>
      ExampleScenarioActorTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ExampleScenarioActorTypeBuilder] from JSON.
  factory ExampleScenarioActorTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleScenarioActorTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExampleScenarioActorTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ExampleScenarioActorTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ExampleScenarioActorTypeBuilder
  final ExampleScenarioActorTypeBuilderEnum? valueEnum;

  /// person
  static ExampleScenarioActorTypeBuilder person =
      ExampleScenarioActorTypeBuilder._(
    valueString: 'person',
    valueEnum: ExampleScenarioActorTypeBuilderEnum.person,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/examplescenario-actor-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Person',
    ),
  );

  /// entity
  static ExampleScenarioActorTypeBuilder entity =
      ExampleScenarioActorTypeBuilder._(
    valueString: 'entity',
    valueEnum: ExampleScenarioActorTypeBuilderEnum.entity,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/examplescenario-actor-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'System',
    ),
  );

  /// For instances where an Element is present but not value
  static ExampleScenarioActorTypeBuilder elementOnly =
      ExampleScenarioActorTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ExampleScenarioActorTypeBuilder> values = [
    person,
    entity,
  ];

  /// Returns the enum value with an element attached
  ExampleScenarioActorTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ExampleScenarioActorTypeBuilder._(
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
